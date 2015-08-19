module ApplicationHelper

  class TestClass
    def initialize(view_context)
      @view = view_context
    end

    def render!
      view.render partial: 'application/index'
    end

    def view
      @view
    end

    def view=(view_context)
      @view = view_context
    end
  end

  protected
  def call_render!
    test_class = TestClass.new(controller.view_context)
    test_class.render!
  end

end
