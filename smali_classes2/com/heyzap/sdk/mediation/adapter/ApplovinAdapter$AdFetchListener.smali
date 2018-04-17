.class Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;
.super Ljava/lang/Object;
.source "ApplovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdFetchListener"
.end annotation


# instance fields
.field private final adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field private final fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;",
            ">;"
        }
    .end annotation
.end field

.field private final incentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;


# direct methods
.method public constructor <init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/applovin/adview/AppLovinIncentivizedInterstitial;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;",
            ">;",
            "Lcom/applovin/adview/AppLovinIncentivizedInterstitial;",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 309
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->incentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 310
    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 311
    return-void
.end method

.method private getFetchFailureReason(I)Lcom/heyzap/internal/Constants$FetchFailureReason;
    .locals 1

    .prologue
    .line 326
    sparse-switch p1, :sswitch_data_0

    .line 340
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$FetchFailureReason;

    :goto_0
    return-object v0

    .line 329
    :sswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 332
    :sswitch_1
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->REMOTE_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 334
    :sswitch_2
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 336
    :sswitch_3
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->REMOTE_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 338
    :sswitch_4
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$FetchFailureReason;

    goto :goto_0

    .line 326
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1f4 -> :sswitch_1
        -0x190 -> :sswitch_3
        -0x12c -> :sswitch_0
        -0x66 -> :sswitch_1
        -0x6 -> :sswitch_2
        -0x1 -> :sswitch_4
        0xcc -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "available"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->incentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-direct {v1, p1, v2}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;-><init>(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinIncentivizedInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "fetch_failed"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;

    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;->getFetchFailureReason(I)Lcom/heyzap/internal/Constants$FetchFailureReason;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method
