#if swift(>=4.0)
@objcMembers public class CloseEvents:  CloseAPIEvents {
    public override func addCloseRequestedEventListener(eventListener: @escaping ElectrodeBridgeEventListener) -> UUID?{
        let listenerProcessor = EventListenerProcessor(
                                eventName: CloseAPI.kEventCloseRequested,
                                eventPayloadClass: None.self,
                                eventListener: eventListener)

        return listenerProcessor.execute()
    }


    public override func removeCloseRequestedEventListener(uuid: UUID) -> ElectrodeBridgeEventListener? {
        return ElectrodeBridgeHolder.removeEventListener(uuid)
    }


    public override func emitEventCloseRequested() {
        let eventProcessor = EventProcessor<None>(
                                eventName: CloseAPI.kEventCloseRequested,
                                eventPayload: nil)

        eventProcessor.execute()
    }

}
#else
public class CloseEvents:  CloseAPIEvents {
    public override func addCloseRequestedEventListener(eventListener: @escaping ElectrodeBridgeEventListener) -> UUID?{
        let listenerProcessor = EventListenerProcessor(
                                eventName: CloseAPI.kEventCloseRequested,
                                eventPayloadClass: None.self,
                                eventListener: eventListener)

        return listenerProcessor.execute()
    }

    public override func removeCloseRequestedEventListener(uuid: UUID) -> ElectrodeBridgeEventListener? {
        return ElectrodeBridgeHolder.removeEventListener(uuid)
    }

    public override func emitEventCloseRequested() {
        let eventProcessor = EventProcessor<None>(
                                eventName: CloseAPI.kEventCloseRequested,
                                eventPayload: nil)

        eventProcessor.execute()
    }
}
#endif
