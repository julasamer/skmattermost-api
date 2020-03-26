/*
* Copyright 2017 WalmartLabs
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
* http://www.apache.org/licenses/LICENSE-2.0
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

package com.SKMattermostApi.ern.api;

import android.support.annotation.NonNull;

import com.walmartlabs.electrode.reactnative.bridge.ElectrodeBridgeEventListener;
import com.walmartlabs.electrode.reactnative.bridge.ElectrodeBridgeEvent;
import com.walmartlabs.electrode.reactnative.bridge.ElectrodeBridgeHolder;
import com.walmartlabs.electrode.reactnative.bridge.EventListenerProcessor;
import com.walmartlabs.electrode.reactnative.bridge.EventProcessor;
import com.walmartlabs.electrode.reactnative.bridge.None;
import java.util.*;
import java.util.UUID;


final class CloseEvents implements CloseApi.Events {
    CloseEvents() {}

    @Override
    public UUID addCloseRequestedEventListener(@NonNull final ElectrodeBridgeEventListener<None> eventListener) {
        return new EventListenerProcessor<>(EVENT_CLOSE_REQUESTED, None.class, eventListener).execute();
    }

                @Override
                public ElectrodeBridgeEventListener<ElectrodeBridgeEvent> removeCloseRequestedEventListener(@NonNull final UUID uuid) {
                    return ElectrodeBridgeHolder.removeEventListener(uuid);
                }

    //------------------------------------------------------------------------------------------------------------------------------------

    @Override
    public void emitCloseRequested() {
        new EventProcessor<>(EVENT_CLOSE_REQUESTED, null).execute();
    }
}
