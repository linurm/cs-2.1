.class public Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;
.super Ljava/lang/Object;
.source "HeyzapAdapter.java"

# interfaces
.implements Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;
.implements Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdListener"
.end annotation


# instance fields
.field private final adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;


# direct methods
.method private constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    .line 238
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;)V

    return-void
.end method


# virtual methods
.method public onAudioFinished()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public onAudioStarted()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public onAvailable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method public onFailedToFetch(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$FetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v3, "No internet connection or no fill."

    invoke-direct {v1, v2, v3}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public onFailedToShow(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    const-string v2, "network failed to show"

    invoke-direct {v1, v2}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method public onHide(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method public onImpressed()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->impressionListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public onIncomplete(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public onShow(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 254
    return-void
.end method
