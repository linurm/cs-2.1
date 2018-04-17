.class public Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "HeyzapExchangeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$6;,
        Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;
    }
.end annotation


# static fields
.field private static final CANON:Ljava/lang/String; = "heyzap_exchange"

.field private static DEFAULT_EXCHANGE_URL:Ljava/lang/String;


# instance fields
.field private adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

.field private exchangeUrl:Ljava/lang/String;

.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastShownClient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/heyzap/exchange/ExchangeClient;",
            ">;"
        }
    .end annotation
.end field

.field private reporter:Lcom/heyzap/exchange/ExchangeEventReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "https://x.heyzap.com/_/0/ad"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->DEFAULT_EXCHANGE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 44
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 45
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->lastShownClient:Ljava/lang/ref/WeakReference;

    .line 348
    return-void
.end method

.method static synthetic access$002(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->lastShownClient:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Lcom/heyzap/exchange/ExchangeEventReporter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->exchangeUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 4

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/heyzap/internal/Constants$AdUnit;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;

    invoke-direct {v2, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$4;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 275
    return-void
.end method

.method private createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    return-object v0
.end method

.method private fetchAndShowBanner(Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;Ljava/util/Map;)Lcom/heyzap/common/lifecycle/AdDisplay;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/heyzap/common/lifecycle/AdDisplay;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v7, Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {v7}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    .line 141
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;

    invoke-virtual {v1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;->getClient()Lcom/heyzap/exchange/ExchangeClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/exchange/ExchangeClient;->getRealBannerView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;

    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;->access$100(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;)Lcom/heyzap/exchange/ExchangeClient;

    move-result-object v1

    iget-object v1, v1, Lcom/heyzap/exchange/ExchangeClient;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v1, v7, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 143
    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;->access$100(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;)Lcom/heyzap/exchange/ExchangeClient;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/exchange/ExchangeClient;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v0, v7, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    move-object v0, v7

    .line 179
    :goto_0
    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 150
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

    sget-object v2, Lcom/heyzap/internal/Constants$CreativeType;->BANNER:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->exchangeUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/heyzap/exchange/ExchangeClient;->fetch(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/exchange/ExchangeEventReporter;Ljava/util/EnumSet;Ljava/lang/String;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$2;

    invoke-direct {v1, p0, v0, p2, v7}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/Map;Lcom/heyzap/common/lifecycle/AdDisplay;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .line 173
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    iget-object v1, v7, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v2, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    move-object v0, v7

    .line 179
    goto :goto_0
.end method

.method private showInterstitial(Lcom/heyzap/mediation/request/MediationRequest;Ljava/util/Map;Lcom/heyzap/common/lifecycle/AdDisplay;)Lcom/heyzap/common/lifecycle/AdDisplay;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/mediation/request/MediationRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/heyzap/common/lifecycle/AdDisplay;",
            ")",
            "Lcom/heyzap/common/lifecycle/AdDisplay;"
        }
    .end annotation

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    .line 103
    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    :try_start_0
    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;

    invoke-virtual {v1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;->getClient()Lcom/heyzap/exchange/ExchangeClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/heyzap/exchange/ExchangeClient;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v2}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_3

    .line 114
    :cond_0
    iget-object v1, p3, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    sget-object v2, Lcom/heyzap/common/lifecycle/DisplayResult;->NOT_READY:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v1, v2}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 127
    :goto_1
    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 132
    :cond_1
    return-object p3

    .line 106
    :catch_0
    move-exception v1

    .line 107
    invoke-static {v1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    :cond_2
    move-object v1, v2

    goto :goto_0

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$1;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;Lcom/heyzap/exchange/ExchangeClient;Lcom/heyzap/mediation/request/MediationRequest;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move-object p3, v1

    goto :goto_1
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$3;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 229
    return-void
.end method

.method public awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 1
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
    .line 233
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
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
    .line 324
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.heyzap.sdk.ads.VASTActivity"

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
    .line 194
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$6;->$SwitchMap$com$heyzap$internal$Constants$CreativeType:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$CreativeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 202
    const-class v0, Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 196
    :pswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 198
    :pswitch_1
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 200
    :pswitch_2
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAllAdUnitCapabilities()Ljava/util/EnumSet;
    .locals 3
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
    .line 184
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "heyzap_exchange"

    return-object v0
.end method

.method public getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;
    .locals 3
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
    .line 189
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCreativeTypesForAdUnit(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ")",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$6;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 217
    const-class v0, Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 209
    :pswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->BANNER:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 211
    :pswitch_1
    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->STATIC:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 213
    :pswitch_2
    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->VIDEO:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 215
    :pswitch_3
    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->INCENTIVIZED:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "Heyzap Exchange"

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "9.0.6"

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
    .line 318
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
    .line 370
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/heyzap/common/concurrency/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;

    .line 371
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;->getClient()Lcom/heyzap/exchange/ExchangeClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;->access$100(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;)Lcom/heyzap/exchange/ExchangeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/exchange/ExchangeClient;->getScore()Ljava/lang/Double;

    move-result-object v0

    .line 375
    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public isInterstitialVideo()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isOnBoard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

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
    .line 308
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->allStarted(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->lastShownClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/exchange/ExchangeClient;

    .line 381
    if-nez v0, :cond_0

    .line 382
    const/4 v0, 0x0

    .line 384
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/heyzap/exchange/ExchangeClient;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onInit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    const-string v1, "url"

    sget-object v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->DEFAULT_EXCHANGE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->optValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->exchangeUrl:Ljava/lang/String;

    .line 330
    new-instance v0, Lcom/heyzap/exchange/ExchangeEventReporter;

    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/heyzap/exchange/ExchangeEventReporter;-><init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->reporter:Lcom/heyzap/exchange/ExchangeEventReporter;

    .line 332
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 333
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Unsupported Ad Unit"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 334
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;->setDefaultValue(Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->createFetchFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 341
    const-string v0, "initialized"

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;
    .locals 5

    .prologue
    .line 73
    new-instance v0, Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {v0}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 76
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v2, "mediation_id"

    iget-object v3, p2, Lcom/heyzap/mediation/MediationResult;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v2, "mediation_tag"

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v2, "ad_unit"

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heyzap/internal/Constants$AdUnit;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$6;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 89
    invoke-direct {p0, p1, v1, v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->showInterstitial(Lcom/heyzap/mediation/request/MediationRequest;Ljava/util/Map;Lcom/heyzap/common/lifecycle/AdDisplay;)Lcom/heyzap/common/lifecycle/AdDisplay;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    iget-object v1, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    sget-object v2, Lcom/heyzap/common/lifecycle/DisplayResult;->UNSUPPORTED_AD_UNIT:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v1, v2}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    const-string v2, "Display Failed"

    invoke-static {v2, v1}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    iget-object v2, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v3, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :pswitch_1
    :try_start_1
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getBannerOptions()Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchAndShowBanner(Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;Ljava/util/Map;)Lcom/heyzap/common/lifecycle/AdDisplay;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public start(Ljava/util/Collection;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 4
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
    .line 280
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->start(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 285
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    .line 286
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/Constants$AdUnit;

    .line 289
    invoke-direct {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 290
    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v2, v0}, Lcom/heyzap/common/concurrency/FutureUtils;->allOf(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$5;

    invoke-direct {v2, p0, v1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$5;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 303
    :goto_1
    return-object v1

    .line 300
    :cond_1
    new-instance v0, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v0}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_1
.end method
