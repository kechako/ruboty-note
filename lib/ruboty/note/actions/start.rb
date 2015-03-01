require 'ruboty/note/actions/base'

module Ruboty
  module Note
    module Actions
      class Start < Ruboty::Note::Actions::Base
        def call
          if channel_noting.nil?
            message.reply('Start note.')
            create_channel_noting
          else
            message.reply('Already start note.')
          end
        end
      end
    end
  end
end
