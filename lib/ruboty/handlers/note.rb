require 'ruboty/note/actions/start'
require 'ruboty/note/actions/stop'
require 'ruboty/note/actions/note'
require 'ruboty/note/actions/show'

module Ruboty
  module Handlers
    class Note < Ruboty::Handlers::Base
      on /note\s+stop/i, name: :stop, description: 'Stop note.'
      on /(.*)/i, name: :note, all: true
      on /note\s+start/i, name: :start, description: 'Start note.'
      on /note\s+show\s+(\d+)/i, name: :show, description: 'Show note.'

      def start(message)
        Ruboty::Note::Actions::Start.new(message).call
      end

      def stop(message)
        Ruboty::Note::Actions::Stop.new(message).call
      end

      def show(message)
        Ruboty::Note::Actions::Show.new(message).call
      end

      def note(message)
        Ruboty::Note::Actions::Note.new(message).call
      end
    end
  end
end
