module Admin
  module RedactorHelper
    module Helper
      def redactor_area(attribute, options = {}, html_options = {})
        text_area(attribute, html_options.deep_merge(data: {
          behavior: "redactor",
          options: options
        }))
      end
    end
  end

  Godmin::FormBuilders::FormBuilder.send(:include, RedactorHelper::Helper)
end