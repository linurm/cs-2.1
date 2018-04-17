.class Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;
.super Ljava/lang/Object;
.source "ExchangeClient.java"

# interfaces
.implements Lcom/heyzap/exchange/ExchangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/exchange/ExchangeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExchangeClientListener"
.end annotation


# instance fields
.field private client:Lcom/heyzap/exchange/ExchangeClient;

.field final synthetic this$0:Lcom/heyzap/exchange/ExchangeClient;


# direct methods
.method public constructor <init>(Lcom/heyzap/exchange/ExchangeClient;Lcom/heyzap/exchange/ExchangeClient;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->this$0:Lcom/heyzap/exchange/ExchangeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->client:Lcom/heyzap/exchange/ExchangeClient;

    .line 283
    return-void
.end method

.method private close()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->client:Lcom/heyzap/exchange/ExchangeClient;

    iget-object v0, v0, Lcom/heyzap/exchange/ExchangeClient;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 359
    return-void
.end method


# virtual methods
.method public mraidInterstitialHide(Lcom/heyzap/common/mraid/MRAIDInterstitial;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->close()V

    return-void
.end method

.method public mraidInterstitialLoaded(Lcom/heyzap/common/mraid/MRAIDInterstitial;)V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->client:Lcom/heyzap/exchange/ExchangeClient;

    iget-object v0, v0, Lcom/heyzap/exchange/ExchangeClient;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method public mraidInterstitialNotReady(Lcom/heyzap/common/mraid/MRAIDInterstitial;)V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->client:Lcom/heyzap/exchange/ExchangeClient;

    iget-object v0, v0, Lcom/heyzap/exchange/ExchangeClient;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    const-string v2, "Not ready"

    invoke-direct {v1, v2}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 352
    return-void
.end method

.method public mraidInterstitialShow(Lcom/heyzap/common/mraid/MRAIDInterstitial;)V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->client:Lcom/heyzap/exchange/ExchangeClient;

    iget-object v0, v0, Lcom/heyzap/exchange/ExchangeClient;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method public mraidNativeFeatureCallTel(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 393
    invoke-virtual {p1, p2}, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->callTel(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public mraidNativeFeatureCreateCalendarEvent(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 367
    invoke-virtual {p1, p2}, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->createCalendarEvent(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public mraidNativeFeatureOpenBrowser(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->client:Lcom/heyzap/exchange/ExchangeClient;

    iget-object v0, v0, Lcom/heyzap/exchange/ExchangeClient;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 378
    invoke-virtual {p1, p2}, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->openBrowser(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public mraidNativeFeaturePlayVideo(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 372
    invoke-virtual {p1, p2}, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->playVideo(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public mraidNativeFeatureSendSms(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 388
    invoke-virtual {p1, p2}, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->sendSms(Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public mraidNativeFeatureStorePicture(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 383
    invoke-virtual {p1, p2}, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->storePicture(Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public mraidViewClose(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public mraidViewExpand(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public mraidViewLoaded(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->client:Lcom/heyzap/exchange/ExchangeClient;

    iget-object v0, v0, Lcom/heyzap/exchange/ExchangeClient;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public mraidViewResize(Lcom/heyzap/common/mraid/MRAIDView;IIII)Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method public vastClick()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->client:Lcom/heyzap/exchange/ExchangeClient;

    iget-object v0, v0, Lcom/heyzap/exchange/ExchangeClient;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 323
    return-void
.end method

.method public vastComplete()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->client:Lcom/heyzap/exchange/ExchangeClient;

    iget-object v0, v0, Lcom/heyzap/exchange/ExchangeClient;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method public vastDismiss()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->close()V

    return-void
.end method

.method public vastError(I)V
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->client:Lcom/heyzap/exchange/ExchangeClient;

    iget-object v0, v0, Lcom/heyzap/exchange/ExchangeClient;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$FetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$FetchFailureReason;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 318
    return-void
.end method

.method public vastIncomplete()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->client:Lcom/heyzap/exchange/ExchangeClient;

    iget-object v0, v0, Lcom/heyzap/exchange/ExchangeClient;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method public vastReady()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->client:Lcom/heyzap/exchange/ExchangeClient;

    iget-object v0, v0, Lcom/heyzap/exchange/ExchangeClient;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method public vastStart()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeClient$ExchangeClientListener;->client:Lcom/heyzap/exchange/ExchangeClient;

    iget-object v0, v0, Lcom/heyzap/exchange/ExchangeClient;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    sget-object v1, Lcom/heyzap/common/lifecycle/DisplayResult;->SUCCESS:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 308
    return-void
.end method
