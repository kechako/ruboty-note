require 'ruboty/note/actions/base'

module Ruboty
  module Note
    module Actions
      class Note < Ruboty::Note::Actions::Base
        def call
          unless channel_noting.nil? || robot?
            channel_noting << {name: message.from_name, body: message.body}
          end
        end
      end
    end
  end
end
