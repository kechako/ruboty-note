require 'ruboty/note/actions/base'

module Ruboty
  module Note
    module Actions
      class Stop < Ruboty::Note::Actions::Base
        def call
          if channel_noting.nil? || robot?
            message.reply('Not started.')
          else
            number = notes.push(channel_noting).size - 1
            delete_channel_noting
            message.reply("Stop note. Note #{number} is saved.")
          end
        end
      end
    end
  end
end
