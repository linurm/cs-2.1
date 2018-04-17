.class Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;
.super Lcom/heyzap/common/lifecycle/FetchResult;
.source "ApplovinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplovinFetchResult"
.end annotation


# instance fields
.field public final cachedAd:Lcom/applovin/sdk/AppLovinAd;

.field public final incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;


# direct methods
.method public constructor <init>(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinIncentivizedInterstitial;)V
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->cachedAd:Lcom/applovin/sdk/AppLovinAd;

    .line 297
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->success:Z

    .line 299
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-direct {p0}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    .line 288
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->errorCode:Lcom/heyzap/internal/Constants$FetchFailureReason;

    .line 289
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->errorMessage:Ljava/lang/String;

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->success:Z

    .line 291
    iput-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->cachedAd:Lcom/applovin/sdk/AppLovinAd;

    .line 292
    iput-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 293
    return-void
.end method
