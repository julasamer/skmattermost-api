#if swift(>=4.0)
@objcMembers public class CloseAPI: NSObject  {
    static let kEventCloseRequested = "com.SKMattermostApi.ern.api.event.closeRequested";


    public lazy var events: CloseAPIEvents = {
        return CloseEvents()
    }()


    public lazy var requests: CloseAPIRequests = {
        return CloseRequests()
    }()
}

@objcMembers public class CloseAPIEvents: NSObject {
    public func addCloseRequestedEventListener(eventListener: @escaping ElectrodeBridgeEventListener) -> UUID?{
        assertionFailure("should override")
        return UUID()
    }

    public func removeCloseRequestedEventListener(uuid: UUID) -> ElectrodeBridgeEventListener? {
        assertionFailure("should override")
        return nil
    }

    public func emitEventCloseRequested() {
        assertionFailure("should override")

    }
}

@objcMembers public class CloseAPIRequests: NSObject {


}
#else
public class CloseAPI: NSObject  {
    static let kEventCloseRequested = "com.SKMattermostApi.ern.api.event.closeRequested";


    public lazy var events: CloseAPIEvents = {
        return CloseEvents()
    }()


    public lazy var requests: CloseAPIRequests = {
        return CloseRequests()
    }()
}

public class CloseAPIEvents: NSObject {
    public func addCloseRequestedEventListener(eventListener: @escaping ElectrodeBridgeEventListener) -> UUID?{
        assertionFailure("should override")
        return UUID()
    }

    public func removeCloseRequestedEventListener(uuid: UUID) -> ElectrodeBridgeEventListener? {
        assertionFailure("should override")
        return nil
    }

    public func emitEventCloseRequested() {
        assertionFailure("should override")

    }
}

public class CloseAPIRequests: NSObject {


}

#endif
