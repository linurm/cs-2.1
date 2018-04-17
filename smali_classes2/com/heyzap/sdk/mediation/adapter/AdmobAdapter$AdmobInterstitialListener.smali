.class Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdmobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdmobInterstitialListener"
.end annotation


# instance fields
.field adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

.field wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;


# direct methods
.method public constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    .line 427
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 428
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    .line 429
    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 430
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "hide"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 471
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "fetch_failed"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 439
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 443
    packed-switch p1, :pswitch_data_0

    .line 457
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$FetchFailureReason;

    .line 461
    :goto_0
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v3, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v3, v0, v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 462
    return-void

    .line 445
    :pswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->REMOTE_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 448
    :pswitch_1
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->BAD_CREDENTIALS:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 451
    :pswitch_2
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->NETWORK_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 454
    :pswitch_3
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "click"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 476
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "available"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 435
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 467
    return-void
.end method
