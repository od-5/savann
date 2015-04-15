# vim:fileencoding=utf-8
from datetime import datetime
import math
import random
from django import template
import re
import time


register = template.Library()


def stringToID(val):
    return int(val.split('-')[1].split(' ')[0])


def minus(value, arg):
    return value - int(arg)


def plus(value, arg):
    return int(value) + int(arg)


def multiply(value, arg):
    return int(value) * int(arg)


def split(values, arg):
    n = values.split(arg)
    return n


def replace_unicode(value):
    import re

    r = re.sub(r'&([A-Za-z]+);', '', value)
    return r


def parse_int(value):
    return int(value)


def get_date(value):
    return datetime.strptime(value, '%a, %d %b %Y %H:%M:%S %Z')


def files(values):
    n = float(math.ceil(values / 2.00))
    return n


def parse_str(value):
    return str(value)


def price_format(value):
    decimal_points = 3
    separator = u' '
    value = str(value)
    if len(value) <= decimal_points:
        return value
    parts = []
    while value:
        parts.append(value[-decimal_points:])
        value = value[:-decimal_points]
    parts.reverse()
    return separator.join(parts)


def get_param_products(value, arg):
    return value.products.exclude(id=int(arg))[:3]


def to_class_name(value):
    return value.__class__.__name__


def get_timer(d_from, d_to):
    from datetime import datetime
    now = datetime.now()
    e = time.mktime(d_to.timetuple())-time.mktime(now.timetuple())
    return int(e)


def sizes(value, arg):
    e = random.randint(int(arg.split(',')[0]), int(arg.split(',')[1]))
    return e


def get_million(value):
    return int((int(value)/1000000))


def parse_float(value):
    e, f = str(value).split('.')
    if int(f) > 0:
        return value
    return int(e)


def get_extension(value):
    f = str(value).split('.')
    return f[-1]


def get_arr_el(arr, id):
    return arr[id]


def is_entry(value, arg):
    if re.findall(arg, value) != 0:
        return True
    return False


def replace(value, param):
    f, e = param.split('#')
    value = str(value).replace(f, e)
    return value


def get_format(value):
    return value.split('.')[-1]


def format_letter(value):
    values = value.split('\n')
    result = ''
    for val in values:
        inf = val.split(':')
        if len(inf) > 1:
            result += '<strong>%s</strong>: %s<br/>' % (inf[0], inf[1])
        else:
            result += '%s<br/>' % val
    return result


def filter_cat(value, arg):
    if arg != 0:
        return value.filter(master__cat=True)
    return value.filter(master__cat=False)


def filter(value, req):
    return value.filter(language_code=req.LANGUAGE_CODE)


register.filter('filter', filter)
register.filter('filter_cat', filter_cat)
register.filter('format_letter', format_letter)
register.filter('get_format', get_format)
register.filter('replace', replace)
register.filter('is_entry', is_entry)
register.filter('get_extension', get_extension)
register.filter('get_arr_el', get_arr_el)
register.filter('parse_float', parse_float)
register.filter('get_million', get_million)
register.filter('sizes', sizes)
register.filter('get_timer', get_timer)
register.filter('to_class_name', to_class_name)
register.filter('get_prod', get_param_products)
register.filter('price', price_format)
register.filter('files', files)
register.filter('parse_date', get_date)
register.filter('str', parse_str)
register.filter('parse_int', parse_int)
register.filter('replace_unicode', replace_unicode)
register.filter('split', split)
register.filter('multiply', multiply)
register.filter('plus', plus)
register.filter('minus', minus)
