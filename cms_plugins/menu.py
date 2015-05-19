from contents.models import Post
from menus.base import Modifier
from menus.menu_pool import menu_pool


class MenuPost(Modifier):
    def modify(self, request, nodes, namespace, root_id, post_cut, breadcrumb):
        if post_cut:
            return nodes
        for node in nodes:
            node.attr['posts'] = Post.objects.language().filter(translations__active=True, pages_id=node.id).order_by('-date').distinct()
        return nodes

menu_pool.register_modifier(MenuPost)
