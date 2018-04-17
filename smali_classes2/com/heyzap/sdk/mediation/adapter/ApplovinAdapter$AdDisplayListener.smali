.class Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;
.super Ljava/lang/Object;
.source "ApplovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdDisplayListener"
.end annotation


# instance fields
.field private final adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

.field private final adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;


# direct methods
.method private constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    .line 374
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 375
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "click"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 387
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "hide"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 393
    return-void
.end method

.method public userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "incentivized_result_incomplete"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 423
    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "incentivized_result_incomplete"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "incentivized_result_incomplete"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 411
    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "incentivized_result_complete"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 399
    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "incentivized_result_incomplete"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "audio_starting"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "audio_finished"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 430
    return-void
.end method
