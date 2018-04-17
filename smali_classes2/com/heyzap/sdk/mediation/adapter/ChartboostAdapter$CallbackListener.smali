.class Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackListener"
.end annotation


# instance fields
.field adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;


# direct methods
.method public constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    .line 362
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    .line 363
    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "available"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2402(Z)Z

    .line 379
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method public didCacheMoreApps(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "moreapps-available"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "available"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2402(Z)Z

    .line 464
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "click"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2500(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 403
    return-void
.end method

.method public didClickMoreApps(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "moreapps-click"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "click"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 489
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "hide"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public didCloseMoreApps(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "moreapps-hide"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "hide"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "incentivized_result_complete"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->incentiveComplete:Z

    .line 495
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "dismiss"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2500(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 392
    return-void
.end method

.method public didDismissMoreApps(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "moreapps-dismiss"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "dismiss"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 477
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v1

    iget-boolean v1, v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->incentiveComplete:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 478
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2500(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 409
    return-void
.end method

.method public didDisplayMoreApps(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "moreapps-show"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 501
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "fetch_failed"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-virtual {p0, p2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->getFailureCause(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)Lcom/heyzap/internal/Constants$FetchFailureReason;

    move-result-object v2

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 386
    return-void
.end method

.method public didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "moreapps-fetch_failed"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 4

    .prologue
    .line 469
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "fetch_failed"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-virtual {p0, p2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->getFailureCause(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)Lcom/heyzap/internal/Constants$FetchFailureReason;

    move-result-object v2

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 471
    return-void
.end method

.method public didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    const-string v1, "moreapps-click_failed"

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public getFailureCause(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)Lcom/heyzap/internal/Constants$FetchFailureReason;
    .locals 2

    .prologue
    .line 504
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 523
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$FetchFailureReason;

    :goto_0
    return-object v0

    .line 506
    :pswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->INTERNAL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 508
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2402(Z)Z

    .line 509
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 511
    :pswitch_2
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->REMOTE_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 514
    :pswitch_3
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->NETWORK_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 521
    :pswitch_4
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayRewardedVideo(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestMoreApps(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x1

    return v0
.end method
