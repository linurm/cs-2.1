.class public Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "AdmobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$7;,
        Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;,
        Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;,
        Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;,
        Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;
    }
.end annotation


# static fields
.field private static KLASS:Ljava/lang/String;


# instance fields
.field private adUnitId:Ljava/lang/String;

.field private adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

.field protected bannerAdUnitId:Ljava/lang/String;

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
            "Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;",
            ">;"
        }
    .end annotation
.end field

.field initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private properties:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "com.google.android.gms.ads.InterstitialAd"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->KLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 40
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 44
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    .line 47
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->enabledAdUnits:Ljava/util/EnumSet;

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 479
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->attemptNextFetch()V

    return-void
.end method

.method static synthetic access$600(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;)Lcom/google/android/gms/ads/AdSize;
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->getAdSize(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method private attemptNextFetch()V
    .locals 4

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/heyzap/internal/Constants$AdUnit;

    const/4 v2, 0x0

    sget-object v3, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;

    invoke-direct {v2, p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 199
    return-void
.end method

.method private static getAdSize(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;)Lcom/google/android/gms/ads/AdSize;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER_320_50:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER_HEIGHT_50:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 356
    :goto_0
    return-object v0

    .line 332
    :cond_1
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->FULL_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 336
    :cond_2
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->LARGE_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER_HEIGHT_90:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    :cond_3
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 340
    :cond_4
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->MEDIUM_RECTANGLE:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER_RECTANGLE_250:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 341
    :cond_5
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 344
    :cond_6
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->LEADERBOARD:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 345
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 348
    :cond_7
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->WIDE_SKYSCRAPER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 349
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 352
    :cond_8
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->SMART_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 353
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 356
    :cond_9
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0
.end method

.method private hasBannerConfig()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->bannerAdUnitId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->bannerAdUnitId:Ljava/lang/String;

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
    .line 319
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$6;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$6;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 325
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
    .line 144
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    invoke-direct {v1}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method

.method public fetch()Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;
    .locals 5

    .prologue
    .line 155
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    .line 157
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v2, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v3, Lcom/heyzap/internal/Constants$FetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v4, "No Activity"

    invoke-direct {v2, v3, v4}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 174
    :goto_0
    return-object v0

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public fetchAndShowBanner(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/lifecycle/AdDisplay;
    .locals 4

    .prologue
    .line 252
    new-instance v1, Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 254
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    .line 256
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->realBannerView:Lcom/google/android/gms/ads/AdView;

    if-eqz v2, :cond_0

    .line 257
    const-string v2, "AdmobAdapter fetchAndShowBanner bailing early"

    invoke-static {v2}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 258
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 259
    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v0, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    move-object v0, v1

    .line 294
    :goto_0
    return-object v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    invoke-direct {v3}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 265
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    .line 269
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 270
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 272
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->realBannerView:Lcom/google/android/gms/ads/AdView;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 273
    goto :goto_0

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;

    invoke-direct {v3, p0, v0, p1}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;Lcom/heyzap/mediation/request/MediationRequest;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-object v0, v1

    .line 294
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
    .line 517
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms.ads.AdActivity"

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
    .line 309
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$7;->$SwitchMap$com$heyzap$internal$Constants$CreativeType:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$CreativeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 313
    const-class v0, Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 311
    :pswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 309
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
    .line 299
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "admob"

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
    .line 304
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->enabledAdUnits:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "AdMob"

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "0.0.0"

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
    .line 511
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

.method public getProperties()Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->properties:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$1;

    invoke-direct {v0, p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->properties:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->properties:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;

    return-object v0
.end method

.method public getScoreOverride(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 522
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public isOnBoard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->KLASS:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->classExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    .line 134
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->allStarted(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 528
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
    .line 99
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    const-string v1, "ad_unit_id"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->adUnitId:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->adUnitId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->adUnitId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->enabledAdUnits:Ljava/util/EnumSet;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    const-string v1, "banner_ad_unit_id"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->bannerAdUnitId:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->bannerAdUnitId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->bannerAdUnitId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->enabledAdUnits:Ljava/util/EnumSet;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;
    .locals 4

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestingActivity()Landroid/app/Activity;

    .line 205
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    .line 206
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    .line 208
    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$7;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {v0}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 245
    new-instance v0, Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {v0}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 246
    iget-object v1, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v2, Lcom/heyzap/common/lifecycle/DisplayResult;

    const-string v3, "ad unit not supported"

    invoke-direct {v2, v3}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 247
    :goto_0
    return-object v0

    .line 210
    :pswitch_0
    new-instance v1, Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 211
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v2, v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    .line 213
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v2, :cond_0

    .line 214
    invoke-static {}, Lcom/heyzap/common/lifecycle/EventStream;->create()Lcom/heyzap/common/lifecycle/EventStream;

    move-result-object v0

    iput-object v0, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 215
    iget-object v0, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    sget-object v2, Lcom/heyzap/common/lifecycle/DisplayResult;->NOT_READY:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v0, v2}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    move-object v0, v1

    .line 216
    goto :goto_0

    .line 218
    :cond_0
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 219
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 220
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 221
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 224
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;Lcom/heyzap/common/lifecycle/AdDisplay;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move-object v0, v1

    .line 241
    goto :goto_0

    .line 243
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchAndShowBanner(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/lifecycle/AdDisplay;

    move-result-object v0

    goto :goto_0

    .line 208
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
    .line 119
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->start(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->attemptNextFetch()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const-string v0, "initialized"

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method
