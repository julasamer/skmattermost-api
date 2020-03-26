// @flow
export default class CloseEvents {
    constructor(bridge) {
        this._bridge = bridge;
    }

            addCloseRequestedEventListener( eventListener: Function): string {
            return   this._bridge.registerEventListener("com.SKMattermostApi.ern.api.event.closeRequested", eventListener);
            }

            removeCloseRequestedEventListener( uuid: string): any {
            return   this._bridge.removeEventListener(uuid);
            }

//------------------------------------------------------------------------------------------------------------------------------------

            emitCloseRequested(): void {
                return this._bridge.emitEvent("com.SKMattermostApi.ern.api.event.closeRequested");



            }
}
