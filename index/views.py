from django.views.generic import TemplateView


class IndexView(TemplateView):
    template_name = 'index/index.html'

    def get_context_data(self, **kwargs):
        return {'greeting': 'Hello, Django!'}
