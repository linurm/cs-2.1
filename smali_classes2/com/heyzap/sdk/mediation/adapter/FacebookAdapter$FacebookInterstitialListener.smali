.class Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;
.implements Lcom/facebook/ads/ImpressionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacebookInterstitialListener"
.end annotation


# instance fields
.field adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

.field wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;


# direct methods
.method public constructor <init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    .line 399
    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 400
    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "click"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->clickEventListener:Lcom/heyzap/common/lifecycle/EventStream;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "available"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 410
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 4

    .prologue
    .line 413
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "fetch_failed"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 438
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    .line 439
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$FetchFailureReason;

    .line 443
    :goto_0
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v2, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 444
    return-void

    .line 418
    :sswitch_0
    const-string v0, "NETWORK_ERROR"

    .line 419
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->NETWORK_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 422
    :sswitch_1
    const-string v0, "NO_FILL"

    .line 423
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 426
    :sswitch_2
    const-string v0, "LOAD_TOO_FREQUENTLY"

    .line 427
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 430
    :sswitch_3
    const-string v0, "SERVER_ERROR"

    .line 431
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->REMOTE_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 434
    :sswitch_4
    const-string v0, "INTERNAL_ERROR"

    .line 435
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->INTERNAL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 416
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x7d0 -> :sswitch_3
        0x7d1 -> :sswitch_4
    .end sparse-switch
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "hide"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 458
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 463
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "logging_impression"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 452
    return-void
.end method
