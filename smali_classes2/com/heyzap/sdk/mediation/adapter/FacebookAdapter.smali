.class public Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$5;,
        Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;,
        Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookInterstitialListener;,
        Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;
    }
.end annotation


# static fields
.field private static KLASS:Ljava/lang/String;


# instance fields
.field private adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

.field protected bannerPlacementId:Ljava/lang/String;

.field private enabledAdUnits:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private placementId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "com.facebook.ads.InterstitialAd"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->KLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 43
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 47
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    .line 53
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->enabledAdUnits:Ljava/util/EnumSet;

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 467
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;Landroid/content/Context;)Lcom/facebook/ads/AdSize;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->getAdSize(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;Landroid/content/Context;)Lcom/facebook/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private attemptNextFetch()V
    .locals 4

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/heyzap/internal/Constants$AdUnit;

    const/4 v2, 0x0

    sget-object v3, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4;

    invoke-direct {v2, p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$4;-><init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 263
    return-void
.end method

.method private static getAdSize(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;Landroid/content/Context;)Lcom/facebook/ads/AdSize;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER_320_50:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    .line 389
    :goto_0
    return-object v0

    .line 369
    :cond_1
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER_HEIGHT_50:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->FULL_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    :cond_2
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 373
    :cond_3
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER_HEIGHT_90:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->LARGE_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    :cond_4
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 377
    :cond_5
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER_RECTANGLE_250:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->MEDIUM_RECTANGLE:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 378
    :cond_6
    sget-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 381
    :cond_7
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->SMART_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 382
    invoke-static {p1}, Lcom/heyzap/internal/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 383
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 385
    :cond_8
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 389
    :cond_9
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    goto :goto_0
.end method

.method private hasBannerConfig()Z
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->bannerPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->bannerPlacementId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 146
    return-void
.end method

.method public awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ")",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/common/lifecycle/FetchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    invoke-direct {v1}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method

.method public fetch()Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;
    .locals 5

    .prologue
    .line 178
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    .line 180
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 181
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v2, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v3, Lcom/heyzap/internal/Constants$FetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v4, "No Activity"

    invoke-direct {v2, v3, v4}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 196
    :goto_0
    return-object v0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public fetchAndShowBanner(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/lifecycle/AdDisplay;
    .locals 4

    .prologue
    .line 200
    new-instance v1, Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 202
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    .line 204
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->realBannerView:Lcom/facebook/ads/AdView;

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 206
    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->clickEventListener:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v0, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    move-object v0, v1

    .line 237
    :goto_0
    return-object v0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    invoke-direct {v3}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 212
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    .line 216
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 217
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->clickEventListener:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 219
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->realBannerView:Lcom/facebook/ads/AdView;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 220
    goto :goto_0

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;-><init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;Lcom/heyzap/mediation/request/MediationRequest;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-object v0, v1

    .line 237
    goto :goto_0
.end method

.method public getActivities()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 506
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.facebook.ads.InterstitialAdActivity"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitsForCreativeType(Lcom/heyzap/internal/Constants$CreativeType;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ")",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$CreativeType:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$CreativeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    const-class v0, Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 130
    :pswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getAllAdUnitCapabilities()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "facebook"

    return-object v0
.end method

.method public getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->enabledAdUnits:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "Facebook"

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "4.0.1"

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScoreOverride(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 511
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isOnBoard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->KLASS:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->classExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isStarted(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->allStarted(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public onInit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    const-string v1, "placement_id"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->placementId:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->placementId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->placementId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->enabledAdUnits:Ljava/util/EnumSet;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    const-string v1, "banner_placement_id"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->bannerPlacementId:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->bannerPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->bannerPlacementId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->enabledAdUnits:Ljava/util/EnumSet;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 291
    const-string v0, "2741b4b2f9c14003c3580be594ec921c"

    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->addTestDevice(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;
    .locals 4

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestingActivity()Landroid/app/Activity;

    .line 81
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    .line 86
    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {v0}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 109
    new-instance v0, Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {v0}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 110
    iget-object v1, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v2, Lcom/heyzap/common/lifecycle/DisplayResult;

    const-string v3, "ad unit not supported"

    invoke-direct {v2, v3}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 111
    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    new-instance v1, Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 89
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v2, v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    .line 91
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    :cond_0
    invoke-static {}, Lcom/heyzap/common/lifecycle/EventStream;->create()Lcom/heyzap/common/lifecycle/EventStream;

    move-result-object v2

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 93
    iget-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    sget-object v3, Lcom/heyzap/common/lifecycle/DisplayResult;->NOT_READY:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v2, v3}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 101
    :goto_1
    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    invoke-direct {v3}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->attemptNextFetch()V

    :cond_1
    move-object v0, v1

    .line 105
    goto :goto_0

    .line 95
    :cond_2
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 96
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->clickEventListener:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 97
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 98
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 99
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/facebook/ads/InterstitialAd;->show()Z

    goto :goto_1

    .line 107
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchAndShowBanner(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/lifecycle/AdDisplay;

    move-result-object v0

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public start(Ljava/util/Collection;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/common/lifecycle/FetchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->start(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->attemptNextFetch()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    const-string v0, "initialized"

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method
