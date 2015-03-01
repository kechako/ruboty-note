module Ruboty
  module Note
    module Actions
      class Base < Ruboty::Actions::Base
        def call
        end

      private

        def data
          message.robot.brain.data[:ruboty_note] ||= {}
        end

        def noting
          data[:noting] ||= {}
        end

        def channel_noting
          noting[channel]
        end

        def create_channel_noting
          noting[channel] = []
        end

        def delete_channel_noting
          noting.delete(channel)
        end

        def notes
          data[:notes] ||= []
        end

        def channel
          @channel ||= (message.from || 'test@test').split(/@/).first.to_sym
        end

        def robot?
          @is_robot ||= message.from_name == message.robot.name
        end
      end
    end
  end
end
