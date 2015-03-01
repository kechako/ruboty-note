require 'ruboty/note/actions/base'

module Ruboty
  module Note
    module Actions
      class Show < Ruboty::Note::Actions::Base
        def call
          if note.nil?
            message.reply("Note #{number} is not found.")
          else
            reply = []
            prev_name = nil
            note.each do |msg|
              name, body = msg[:name], msg[:body]

              unless name == prev_name
                reply << '' unless prev_name.nil?
                reply << "#{name}:"
              end
              reply << body

              prev_name = name
            end
            message.reply(reply.join("\n"))
          end
        end

      private
        def note
          notes[number]
        end

        def number
          @number ||= message[1].to_i
        end
      end
    end
  end
end
