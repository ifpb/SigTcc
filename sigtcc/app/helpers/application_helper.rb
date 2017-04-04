module ApplicationHelper
  def flash_message
    messages = ""
    [:notice, :info, :warning, :error, :alert].each {|type|
      if flash[type]
        messages += flash[type]
      end
    }

    #método do RDFa
    Rdfa.register_rdfa_namespace 'sioc', 'http://rdfs.org/sioc/ns#'


    messages
  end
end
