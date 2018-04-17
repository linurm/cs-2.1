.class public LAdjustMarmalade;
.super Lcom/ideaworks3d/marmalade/LoaderActivitySlave;
.source "AdjustMarmalade.java"

# interfaces
.implements Lcom/adjust/sdk/OnAttributionChangedListener;
.implements Lcom/adjust/sdk/OnSessionTrackingSucceededListener;
.implements Lcom/adjust/sdk/OnSessionTrackingFailedListener;
.implements Lcom/adjust/sdk/OnEventTrackingSucceededListener;
.implements Lcom/adjust/sdk/OnEventTrackingFailedListener;
.implements Lcom/adjust/sdk/OnDeeplinkResponseListener;


# instance fields
.field private isDeeplinkCallbackSet:Z

.field private isGoogleAdIdCallbackSet:Z

.field private isIdfaCallbackSet:Z

.field private shouldDeferredDeeplinkBeOpened:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivitySlave;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, LAdjustMarmalade;->shouldDeferredDeeplinkBeOpened:Z

    .line 39
    iput-boolean v1, p0, LAdjustMarmalade;->isGoogleAdIdCallbackSet:Z

    .line 40
    iput-boolean v1, p0, LAdjustMarmalade;->isIdfaCallbackSet:Z

    .line 41
    iput-boolean v1, p0, LAdjustMarmalade;->isDeeplinkCallbackSet:Z

    return-void
.end method

.method private isStringValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 404
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjust_AddSessionCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    invoke-static {p1, p2}, Lcom/adjust/sdk/Adjust;->addSessionCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public adjust_AddSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    invoke-static {p1, p2}, Lcom/adjust/sdk/Adjust;->addSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public adjust_GetAdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getAdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public adjust_GetAttribution()Lcom/adjust/sdk/AdjustAttribution;
    .locals 1

    .prologue
    .line 286
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getAttribution()Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v0

    return-object v0
.end method

.method public adjust_GetGoogleAdId()V
    .locals 2

    .prologue
    .line 259
    iget-boolean v0, p0, LAdjustMarmalade;->isGoogleAdIdCallbackSet:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    new-instance v1, LAdjustMarmalade$1;

    invoke-direct {v1, p0}, LAdjustMarmalade$1;-><init>(LAdjustMarmalade;)V

    invoke-static {v0, v1}, Lcom/adjust/sdk/Adjust;->getGoogleAdId(Landroid/content/Context;Lcom/adjust/sdk/OnDeviceIdsRead;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, LAdjustMarmalade;->googleAdIdCallback(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public adjust_GetIdfa()V
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, LAdjustMarmalade;->isIdfaCallbackSet:Z

    if-eqz v0, :cond_0

    .line 277
    const-string v0, ""

    invoke-virtual {p0, v0}, LAdjustMarmalade;->idfaCallback(Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method public adjust_IsEnabled()Z
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/adjust/sdk/Adjust;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public adjust_RemoveSessionCallbackParameter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    invoke-static {p1}, Lcom/adjust/sdk/Adjust;->removeSessionCallbackParameter(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public adjust_RemoveSessionPartnerParameter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    invoke-static {p1}, Lcom/adjust/sdk/Adjust;->removeSessionPartnerParameter(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public adjust_ResetSessionCallbackParameters()V
    .locals 0

    .prologue
    .line 252
    invoke-static {}, Lcom/adjust/sdk/Adjust;->resetSessionCallbackParameters()V

    .line 253
    return-void
.end method

.method public adjust_ResetSessionPartnerParameters()V
    .locals 0

    .prologue
    .line 255
    invoke-static {}, Lcom/adjust/sdk/Adjust;->resetSessionPartnerParameters()V

    .line 256
    return-void
.end method

.method public adjust_SendFirstPackages()V
    .locals 0

    .prologue
    .line 232
    invoke-static {}, Lcom/adjust/sdk/Adjust;->sendFirstPackages()V

    .line 233
    return-void
.end method

.method public adjust_SetDeviceToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    invoke-static {p1}, Lcom/adjust/sdk/Adjust;->setPushToken(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public adjust_SetEnabled(Z)V
    .locals 0

    .prologue
    .line 212
    invoke-static {p1}, Lcom/adjust/sdk/Adjust;->setEnabled(Z)V

    .line 213
    return-void
.end method

.method public adjust_SetOfflineMode(Z)V
    .locals 0

    .prologue
    .line 220
    invoke-static {p1}, Lcom/adjust/sdk/Adjust;->setOfflineMode(Z)V

    .line 221
    return-void
.end method

.method public adjust_SetReferrer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    invoke-static {p1}, Lcom/adjust/sdk/Adjust;->setReferrer(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public adjust_Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZ)V
    .locals 7

    .prologue
    .line 94
    invoke-direct {p0, p1}, LAdjustMarmalade;->isStringValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, p2}, LAdjustMarmalade;->isStringValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 95
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p3}, LAdjustMarmalade;->isStringValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    const-string v3, "suppress"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    const/4 v2, 0x1

    .line 103
    :cond_0
    new-instance v3, Lcom/adjust/sdk/AdjustConfig;

    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v4

    invoke-direct {v3, v4, p1, p2, v2}, Lcom/adjust/sdk/AdjustConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    invoke-direct {p0, p3}, LAdjustMarmalade;->isStringValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const-string v2, "verbose"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 107
    sget-object v2, Lcom/adjust/sdk/LogLevel;->VERBOSE:Lcom/adjust/sdk/LogLevel;

    invoke-virtual {v3, v2}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    .line 123
    :cond_1
    :goto_0
    move-object/from16 v0, p10

    invoke-direct {p0, v0}, LAdjustMarmalade;->isStringValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Lcom/adjust/sdk/AdjustConfig;->setProcessName(Ljava/lang/String;)V

    .line 127
    :cond_2
    move-object/from16 v0, p11

    invoke-direct {p0, v0}, LAdjustMarmalade;->isStringValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Lcom/adjust/sdk/AdjustConfig;->setDefaultTracker(Ljava/lang/String;)V

    .line 131
    :cond_3
    invoke-direct {p0, p4}, LAdjustMarmalade;->isStringValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    invoke-virtual {v3, p4}, Lcom/adjust/sdk/AdjustConfig;->setSdkPrefix(Ljava/lang/String;)V

    .line 135
    :cond_4
    move-object/from16 v0, p12

    invoke-direct {p0, v0}, LAdjustMarmalade;->isStringValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    move-object/from16 v0, p12

    invoke-virtual {v3, v0}, Lcom/adjust/sdk/AdjustConfig;->setUserAgent(Ljava/lang/String;)V

    .line 139
    :cond_5
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v2, p5, v4

    if-eqz v2, :cond_6

    .line 140
    invoke-virtual {v3, p5, p6}, Lcom/adjust/sdk/AdjustConfig;->setDelayStart(D)V

    .line 143
    :cond_6
    if-eqz p13, :cond_7

    .line 144
    invoke-virtual {v3, p0}, Lcom/adjust/sdk/AdjustConfig;->setOnAttributionChangedListener(Lcom/adjust/sdk/OnAttributionChangedListener;)V

    .line 147
    :cond_7
    if-eqz p14, :cond_8

    .line 148
    invoke-virtual {v3, p0}, Lcom/adjust/sdk/AdjustConfig;->setOnSessionTrackingSucceededListener(Lcom/adjust/sdk/OnSessionTrackingSucceededListener;)V

    .line 151
    :cond_8
    if-eqz p15, :cond_9

    .line 152
    invoke-virtual {v3, p0}, Lcom/adjust/sdk/AdjustConfig;->setOnSessionTrackingFailedListener(Lcom/adjust/sdk/OnSessionTrackingFailedListener;)V

    .line 155
    :cond_9
    if-eqz p16, :cond_a

    .line 156
    invoke-virtual {v3, p0}, Lcom/adjust/sdk/AdjustConfig;->setOnEventTrackingSucceededListener(Lcom/adjust/sdk/OnEventTrackingSucceededListener;)V

    .line 159
    :cond_a
    if-eqz p17, :cond_b

    .line 160
    invoke-virtual {v3, p0}, Lcom/adjust/sdk/AdjustConfig;->setOnEventTrackingFailedListener(Lcom/adjust/sdk/OnEventTrackingFailedListener;)V

    .line 163
    :cond_b
    if-eqz p19, :cond_c

    .line 164
    invoke-virtual {v3, p0}, Lcom/adjust/sdk/AdjustConfig;->setOnDeeplinkResponseListener(Lcom/adjust/sdk/OnDeeplinkResponseListener;)V

    .line 167
    :cond_c
    move/from16 v0, p9

    iput-boolean v0, p0, LAdjustMarmalade;->shouldDeferredDeeplinkBeOpened:Z

    .line 168
    move/from16 v0, p20

    iput-boolean v0, p0, LAdjustMarmalade;->isGoogleAdIdCallbackSet:Z

    .line 169
    move/from16 v0, p21

    iput-boolean v0, p0, LAdjustMarmalade;->isIdfaCallbackSet:Z

    .line 170
    move/from16 v0, p18

    iput-boolean v0, p0, LAdjustMarmalade;->isDeeplinkCallbackSet:Z

    .line 172
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/adjust/sdk/AdjustConfig;->setEventBufferingEnabled(Ljava/lang/Boolean;)V

    .line 173
    invoke-virtual {v3, p8}, Lcom/adjust/sdk/AdjustConfig;->setSendInBackground(Z)V

    .line 175
    invoke-static {v3}, Lcom/adjust/sdk/Adjust;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    .line 176
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onResume()V

    .line 178
    :cond_d
    return-void

    .line 108
    :cond_e
    const-string v2, "debug"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 109
    sget-object v2, Lcom/adjust/sdk/LogLevel;->DEBUG:Lcom/adjust/sdk/LogLevel;

    invoke-virtual {v3, v2}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    goto/16 :goto_0

    .line 110
    :cond_f
    const-string v2, "info"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 111
    sget-object v2, Lcom/adjust/sdk/LogLevel;->INFO:Lcom/adjust/sdk/LogLevel;

    invoke-virtual {v3, v2}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    goto/16 :goto_0

    .line 112
    :cond_10
    const-string v2, "warn"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 113
    sget-object v2, Lcom/adjust/sdk/LogLevel;->WARN:Lcom/adjust/sdk/LogLevel;

    invoke-virtual {v3, v2}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    goto/16 :goto_0

    .line 114
    :cond_11
    const-string v2, "error"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 115
    sget-object v2, Lcom/adjust/sdk/LogLevel;->ERROR:Lcom/adjust/sdk/LogLevel;

    invoke-virtual {v3, v2}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    goto/16 :goto_0

    .line 116
    :cond_12
    const-string v2, "assert"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 117
    sget-object v2, Lcom/adjust/sdk/LogLevel;->ASSERT:Lcom/adjust/sdk/LogLevel;

    invoke-virtual {v3, v2}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    goto/16 :goto_0

    .line 118
    :cond_13
    const-string v2, "suppress"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    sget-object v2, Lcom/adjust/sdk/LogLevel;->SUPRESS:Lcom/adjust/sdk/LogLevel;

    invoke-virtual {v3, v2}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    goto/16 :goto_0
.end method

.method public adjust_TrackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0, p1}, LAdjustMarmalade;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {v2, p1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 191
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p5, v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v2, p5, p6, p2}, Lcom/adjust/sdk/AdjustEvent;->setRevenue(DLjava/lang/String;)V

    .line 195
    :cond_0
    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_2
    if-eqz p3, :cond_3

    .line 204
    invoke-virtual {v2, p3}, Lcom/adjust/sdk/AdjustEvent;->setOrderId(Ljava/lang/String;)V

    .line 207
    :cond_3
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 209
    :cond_4
    return-void
.end method

.method public native attributionCallback(Ljava/lang/String;)V
.end method

.method public native deeplinkCallback(Ljava/lang/String;)V
.end method

.method public native deferredDeeplinkCallback(Ljava/lang/String;)V
.end method

.method public native eventFailureCallback(Ljava/lang/String;)V
.end method

.method public native eventSuccessCallback(Ljava/lang/String;)V
.end method

.method public native googleAdIdCallback(Ljava/lang/String;)V
.end method

.method public native idfaCallback(Ljava/lang/String;)V
.end method

.method public launchReceivedDeeplink(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LAdjustMarmalade;->deferredDeeplinkCallback(Ljava/lang/String;)V

    .line 400
    iget-boolean v0, p0, LAdjustMarmalade;->shouldDeferredDeeplinkBeOpened:Z

    return v0
.end method

.method public onAttributionChanged(Lcom/adjust/sdk/AdjustAttribution;)V
    .locals 3

    .prologue
    .line 291
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 294
    :try_start_0
    const-string v0, "tracker_token"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustAttribution;->trackerToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v0, "tracker_name"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v0, "network"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustAttribution;->network:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string v0, "campaign"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v0, "ad_group"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v0, "creative"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v0, "click_label"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustAttribution;->clickLabel:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string v0, "adid"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustAttribution;->adid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LAdjustMarmalade;->attributionCallback(Ljava/lang/String;)V

    .line 307
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onFinishedEventTrackingFailed(Lcom/adjust/sdk/AdjustEventFailure;)V
    .locals 3

    .prologue
    .line 376
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 379
    :try_start_0
    const-string v0, "message"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEventFailure;->message:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string v0, "timestamp"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEventFailure;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    const-string v0, "event_token"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEventFailure;->eventToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    const-string v0, "adid"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEventFailure;->adid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v0, "will_retry"

    iget-boolean v2, p1, Lcom/adjust/sdk/AdjustEventFailure;->willRetry:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    iget-object v0, p1, Lcom/adjust/sdk/AdjustEventFailure;->jsonResponse:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 386
    const-string v0, "json_response"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEventFailure;->jsonResponse:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LAdjustMarmalade;->eventFailureCallback(Ljava/lang/String;)V

    .line 395
    return-void

    .line 388
    :cond_0
    :try_start_1
    const-string v0, "json_response"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onFinishedEventTrackingSucceeded(Lcom/adjust/sdk/AdjustEventSuccess;)V
    .locals 3

    .prologue
    .line 354
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 357
    :try_start_0
    const-string v0, "message"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEventSuccess;->message:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v0, "timestamp"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEventSuccess;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    const-string v0, "event_token"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEventSuccess;->eventToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string v0, "adid"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEventSuccess;->adid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    iget-object v0, p1, Lcom/adjust/sdk/AdjustEventSuccess;->jsonResponse:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "json_response"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEventSuccess;->jsonResponse:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LAdjustMarmalade;->eventSuccessCallback(Ljava/lang/String;)V

    .line 372
    return-void

    .line 365
    :cond_0
    :try_start_1
    const-string v0, "json_response"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onFinishedSessionTrackingFailed(Lcom/adjust/sdk/AdjustSessionFailure;)V
    .locals 3

    .prologue
    .line 332
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 335
    :try_start_0
    const-string v0, "message"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustSessionFailure;->message:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v0, "timestamp"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustSessionFailure;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v0, "adid"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustSessionFailure;->adid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v0, "will_retry"

    iget-boolean v2, p1, Lcom/adjust/sdk/AdjustSessionFailure;->willRetry:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    iget-object v0, p1, Lcom/adjust/sdk/AdjustSessionFailure;->jsonResponse:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 341
    const-string v0, "json_response"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustSessionFailure;->jsonResponse:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LAdjustMarmalade;->sessionFailureCallback(Ljava/lang/String;)V

    .line 350
    return-void

    .line 343
    :cond_0
    :try_start_1
    const-string v0, "json_response"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onFinishedSessionTrackingSucceeded(Lcom/adjust/sdk/AdjustSessionSuccess;)V
    .locals 3

    .prologue
    .line 311
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 314
    :try_start_0
    const-string v0, "message"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustSessionSuccess;->message:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v0, "timestamp"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustSessionSuccess;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v0, "adid"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustSessionSuccess;->adid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    iget-object v0, p1, Lcom/adjust/sdk/AdjustSessionSuccess;->jsonResponse:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "json_response"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustSessionSuccess;->jsonResponse:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LAdjustMarmalade;->sessionSuccessCallback(Ljava/lang/String;)V

    .line 328
    return-void

    .line 321
    :cond_0
    :try_start_1
    const-string v0, "json_response"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderActivitySlave;->onNewIntent(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->appWillOpenUrl(Landroid/net/Uri;)V

    .line 55
    iget-boolean v1, p0, LAdjustMarmalade;->isDeeplinkCallbackSet:Z

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LAdjustMarmalade;->deeplinkCallback(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivitySlave;->onPause()V

    .line 71
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onPause()V

    .line 72
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivitySlave;->onResume()V

    .line 65
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onResume()V

    .line 66
    return-void
.end method

.method public native sessionFailureCallback(Ljava/lang/String;)V
.end method

.method public native sessionSuccessCallback(Ljava/lang/String;)V
.end method
