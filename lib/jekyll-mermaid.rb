module Jekyll
  class Mermaid < Liquid::Block

    def initialize(tag_name, markup, tokens)
      super
    end

    def render(context)
      @config = context.registers[:site].config['mermaid']
      "<script type=\"module\">"\
        "import mermaid from '#{@config['src']}';"\
        "mermaid.initialize({"\
            "startOnLoad: true,"\
            "theme: '#{@config['theme']}'"\
        "});"\
      "</script>"\
      "<div class=\"mermaid\">#{super}</div>"
    end
  end
end

Liquid::Template.register_tag('mermaid', Jekyll::Mermaid)
