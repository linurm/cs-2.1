.class Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacebookBannerListener"
.end annotation


# instance fields
.field adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

.field wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;


# direct methods
.method public constructor <init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    .line 301
    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 302
    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "banner-click"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->clickEventListener:Lcom/heyzap/common/lifecycle/EventStream;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 308
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3

    .prologue
    .line 312
    const-string v0, "Facebook banner onAdLoaded"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "banner-loaded"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 314
    new-instance v0, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v0}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>()V

    .line 315
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iput-object v1, v0, Lcom/heyzap/common/lifecycle/DisplayResult;->bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    .line 317
    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    .line 318
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    .line 319
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v2, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 321
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v1, v0}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 322
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "banner-fetch_failed"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->NETWORK_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    .line 332
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 354
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 355
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$FetchFailureReason;

    .line 359
    :goto_0
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v3, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v3, v0, v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 360
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v3, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v3, v1, v0}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;Lcom/heyzap/internal/Constants$FetchFailureReason;)V

    invoke-virtual {v2, v3}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 361
    return-void

    .line 334
    :sswitch_0
    const-string v1, "NETWORK_ERROR"

    .line 335
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->NETWORK_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 338
    :sswitch_1
    const-string v1, "NO_FILL"

    .line 339
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 342
    :sswitch_2
    const-string v1, "LOAD_TOO_FREQUENTLY"

    .line 343
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 346
    :sswitch_3
    const-string v1, "SERVER_ERROR"

    .line 347
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->REMOTE_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 350
    :sswitch_4
    const-string v1, "INTERNAL_ERROR"

    .line 351
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->INTERNAL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 332
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x7d0 -> :sswitch_3
        0x7d1 -> :sswitch_4
    .end sparse-switch
.end method
