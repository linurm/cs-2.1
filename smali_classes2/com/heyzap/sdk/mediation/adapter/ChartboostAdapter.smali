.class public Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$5;,
        Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;,
        Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;,
        Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    }
.end annotation


# static fields
.field private static CANON:Ljava/lang/String;

.field private static EXTRA_KLASS:Ljava/lang/String;

.field private static KLASS:Ljava/lang/String;

.field private static MARKETING_NAME:Ljava/lang/String;

.field private static threwError:Z


# instance fields
.field private adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

.field private appId:Ljava/lang/String;

.field private appSignature:Ljava/lang/String;

.field private delegate:Lcom/chartboost/sdk/ChartboostDelegate;

.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;",
            ">;"
        }
    .end annotation
.end field

.field private incentivizedDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

.field private incentivizedLocation:Ljava/lang/String;

.field private interstitialDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

.field private interstitialLocation:Ljava/lang/String;

.field private setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/heyzap/common/concurrency/SettableFuture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "com.chartboost.sdk.Chartboost"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->KLASS:Ljava/lang/String;

    .line 48
    const-string v0, "com.chartboost.sdk.Model.CBError"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->EXTRA_KLASS:Ljava/lang/String;

    .line 49
    const-string v0, "chartboost"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->CANON:Ljava/lang/String;

    .line 50
    const-string v0, "Chartboost"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->MARKETING_NAME:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->threwError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 59
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    .line 60
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/chartboost/sdk/ChartboostDelegate;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->delegate:Lcom/chartboost/sdk/ChartboostDelegate;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/internal/Constants$AdUnit;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->checkReady(Lcom/heyzap/internal/Constants$AdUnit;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$2402(Z)Z
    .locals 0

    .prologue
    .line 45
    sput-boolean p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->threwError:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->appSignature:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method private attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 4

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/heyzap/internal/Constants$AdUnit;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 268
    return-void
.end method

.method private checkReady(Lcom/heyzap/internal/Constants$AdUnit;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 203
    sget-boolean v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->threwError:Z

    if-eqz v1, :cond_0

    .line 212
    :goto_0
    return v0

    .line 206
    :cond_0
    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doInitialSetupIfNeeded()Lcom/heyzap/common/concurrency/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/common/concurrency/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/ListenableFuture;

    return-object v0
.end method

.method private fetch(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_0
    return-void

    .line 219
    :pswitch_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$4;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 331
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
    .line 156
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method

.method public getActivities()Ljava/util/List;
    .locals 1
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
    .line 549
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

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
    .line 313
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$CreativeType:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$CreativeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 319
    const-class v0, Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 315
    :pswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 317
    :pswitch_1
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .line 303
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->CANON:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;
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
    .line 308
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->MARKETING_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "5.1.0"

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
    .line 542
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScoreOverride(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 554
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public isOnBoard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->KLASS:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->classExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->EXTRA_KLASS:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->classExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 150
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->allStarted(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 531
    if-nez v0, :cond_0

    move v0, v1

    .line 537
    :goto_0
    return v0

    .line 534
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 537
    goto :goto_0
.end method

.method public onInit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialLocation:Ljava/lang/String;

    .line 93
    const-string v0, "Main Menu"

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedLocation:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;

    const-string v1, "Context is not an Activity. Please pass an Activity to HeyzapAds.start to enable chartboost."

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->appId:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    const-string v1, "app_signature"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->appSignature:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->appId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->appSignature:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 102
    :cond_1
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;

    const-string v1, "App id or signature not defined."

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;

    invoke-direct {v0, p0, p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->delegate:Lcom/chartboost/sdk/ChartboostDelegate;

    .line 107
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    invoke-direct {v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;-><init>()V

    .line 108
    iget-object v0, v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    sget-object v2, Lcom/heyzap/common/lifecycle/FetchResult;->UNSUPPORTED_AD_UNIT:Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-virtual {v0, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 109
    invoke-static {}, Lcom/heyzap/internal/Constants$AdUnit;->values()[Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 110
    iget-object v5, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v5, v4, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestingActivity()Landroid/app/Activity;

    .line 273
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    .line 274
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->delegate:Lcom/chartboost/sdk/ChartboostDelegate;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 277
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {v1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 295
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    invoke-direct {v0, v1, v3}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;)V

    .line 296
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v2, Lcom/heyzap/common/lifecycle/DisplayResult;

    const-string v3, "invalid ad unit"

    invoke-direct {v2, v3}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 297
    :goto_0
    return-object v0

    .line 279
    :pswitch_0
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    invoke-direct {v0, v1, v3}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    .line 280
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 283
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 285
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    goto :goto_0

    .line 287
    :pswitch_1
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    invoke-direct {v0, v1, v3}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    .line 288
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showRewardedVideo(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 291
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 293
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
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
            "Lcom/heyzap/common/concurrency/SettableFuture;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->start(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    .line 121
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getConfiguredAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 123
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->doInitialSetupIfNeeded()Lcom/heyzap/common/concurrency/ListenableFuture;

    move-result-object v2

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Ljava/util/Set;Lcom/heyzap/common/concurrency/SettableFuture;)V

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v3, v1}, Lcom/heyzap/common/concurrency/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 145
    :goto_0
    return-object v0

    .line 142
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method
