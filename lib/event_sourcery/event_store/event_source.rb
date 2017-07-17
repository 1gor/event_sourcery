module EventSourcery
  module EventStore
    class EventSource
      def initialize(event_store)
        @event_store = event_store
      end

      extend Forwardable
      def_delegators :event_store,
                     :get_next_from,
                     :get_event_by_uuid,
                     :latest_event_id,
                     :get_events_for_aggregate_id,
                     :each_by_range,
                     :subscribe

      private

      attr_reader :event_store
    end
  end
end
