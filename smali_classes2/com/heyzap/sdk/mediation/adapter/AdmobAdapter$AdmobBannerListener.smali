.class Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdmobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdmobBannerListener"
.end annotation


# instance fields
.field adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

.field wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;


# direct methods
.method public constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    .line 364
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 365
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    .line 366
    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 367
    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 4

    .prologue
    .line 385
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "banner-fetch_failed"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 390
    packed-switch p1, :pswitch_data_0

    .line 408
    const-string v1, "UNKNOWN"

    .line 409
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$FetchFailureReason;

    .line 412
    :goto_0
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v3, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v3, v0, v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 413
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v3, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v3, v1, v0}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;Lcom/heyzap/internal/Constants$FetchFailureReason;)V

    invoke-virtual {v2, v3}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 414
    return-void

    .line 392
    :pswitch_0
    const-string v1, "INTERNAL_ERROR"

    .line 393
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->INTERNAL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 396
    :pswitch_1
    const-string v1, "INTERNAL_ERROR"

    .line 397
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 400
    :pswitch_2
    const-string v1, "Network_ERROR"

    .line 401
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->NETWORK_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 404
    :pswitch_3
    const-string v1, "NO_FILL"

    .line 405
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAdLoaded()V
    .locals 3

    .prologue
    .line 370
    const-string v0, "Admob onAdLoaded"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "banner-loaded"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 374
    new-instance v0, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v0}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>()V

    .line 375
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iput-object v1, v0, Lcom/heyzap/common/lifecycle/DisplayResult;->bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    .line 377
    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    .line 378
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    .line 379
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v2, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 381
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v1, v0}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "banner-click"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 419
    return-void
.end method
