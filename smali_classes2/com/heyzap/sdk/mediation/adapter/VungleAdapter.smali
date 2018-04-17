.class public Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "VungleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$3;,
        Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;,
        Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;,
        Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;
    }
.end annotation


# static fields
.field private static AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

.field private static APP_ID_KEY:Ljava/lang/String;

.field private static CANON:Ljava/lang/String;

.field private static KLASS:Ljava/lang/String;

.field private static MARKETING_NAME:Ljava/lang/String;

.field private static isConfigured:Ljava/lang/Boolean;


# instance fields
.field private appId:Ljava/lang/String;

.field private displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;",
            ">;"
        }
    .end annotation
.end field

.field private started:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->isConfigured:Ljava/lang/Boolean;

    .line 39
    const-string v0, "app_id"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->APP_ID_KEY:Ljava/lang/String;

    .line 40
    const-string v0, "vungle"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->CANON:Ljava/lang/String;

    .line 41
    const-string v0, "com.vungle.publisher.VunglePub"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->KLASS:Ljava/lang/String;

    .line 42
    const-string v0, "Vungle"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->MARKETING_NAME:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 45
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 284
    return-void
.end method

.method static synthetic access$200()Lcom/heyzap/internal/Constants$AdUnit;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->checkAvailability()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    return-object v0
.end method

.method private attemptNextFetch()V
    .locals 8

    .prologue
    .line 227
    new-instance v0, Lcom/heyzap/internal/RetryManager;

    new-instance v7, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;

    invoke-direct {v7, p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)V

    new-instance v1, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v6}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v7, v1, v2}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v0}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 263
    return-void
.end method

.method private checkAvailability()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 208
    :try_start_0
    const-class v0, Lcom/vungle/publisher/VunglePub;

    const-string v2, "isAdPlayable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 209
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 221
    :goto_0
    return v0

    .line 210
    :catch_0
    move-exception v0

    .line 213
    :try_start_1
    const-class v0, Lcom/vungle/publisher/VunglePub;

    const-string v2, "isCachedAdAvailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 214
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 215
    :catch_1
    move-exception v0

    .line 216
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    :goto_1
    move v0, v1

    .line 221
    goto :goto_0

    .line 218
    :catch_2
    move-exception v0

    .line 219
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private setListener(Lcom/vungle/publisher/EventListener;)V
    .locals 6

    .prologue
    .line 192
    :try_start_0
    const-class v0, Lcom/vungle/publisher/VunglePub;

    const-string v1, "setEventListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/vungle/publisher/EventListener;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 204
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 196
    :try_start_1
    const-class v0, Lcom/vungle/publisher/VunglePub;

    const-string v1, "setEventListeners"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [Lcom/vungle/publisher/EventListener;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 197
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/vungle/publisher/EventListener;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 198
    :catch_1
    move-exception v0

    .line 199
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 201
    :catch_2
    move-exception v0

    .line 202
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 115
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
    .line 119
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->checkAvailability()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

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
    .line 347
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.vungle.publisher.FullScreenAdActivity"

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
    .line 97
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$3;->$SwitchMap$com$heyzap$internal$Constants$CreativeType:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$CreativeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    const-class v0, Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 99
    :pswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 101
    :pswitch_1
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .line 87
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->CANON:Ljava/lang/String;

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
    .line 92
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->MARKETING_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    const-string v0, "VungleDroid/3.3.0"

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
    .line 341
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScoreOverride(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 352
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public isOnBoard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->KLASS:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->classExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    .line 146
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public onInit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->APP_ID_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->appId:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->appId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;

    const-string v1, "Vungle App ID not present."

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 156
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestingActivity()Landroid/app/Activity;

    .line 157
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    .line 160
    new-instance v1, Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 162
    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    invoke-direct {v2, v0, v5}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;)V

    iput-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    .line 164
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->checkAvailability()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/publisher/VunglePub;->playAd()V

    .line 167
    new-instance v2, Lcom/vungle/publisher/AdConfig;

    invoke-direct {v2}, Lcom/vungle/publisher/AdConfig;-><init>()V

    .line 169
    sget-object v3, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v3}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v2, v4}, Lcom/vungle/publisher/AdConfig;->setIncentivized(Z)V

    .line 171
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/AdConfig;->setBackButtonImmediatelyEnabled(Z)V

    .line 173
    :cond_0
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->getGlobalAdConfig()Lcom/vungle/publisher/AdConfig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/vungle/publisher/AdConfig;->setBackButtonImmediatelyEnabled(Z)V

    .line 175
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/VunglePub;->playAd(Lcom/vungle/publisher/AdConfig;)V

    .line 176
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v0, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 177
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object v0, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 178
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v0, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 179
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object v0, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v2, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v2, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    invoke-direct {v3, v5}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;)V

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 185
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->attemptNextFetch()V

    .line 187
    :cond_1
    return-object v1

    .line 181
    :cond_2
    iget-object v0, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    sget-object v2, Lcom/heyzap/common/lifecycle/DisplayResult;->NOT_READY:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v0, v2}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    goto :goto_0
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
    const/4 v3, 0x1

    .line 127
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;)Z

    .line 130
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->getGlobalAdConfig()Lcom/vungle/publisher/AdConfig;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v3}, Lcom/vungle/publisher/AdConfig;->setSoundEnabled(Z)V

    .line 133
    sget-object v1, Lcom/vungle/publisher/Orientation;->autoRotate:Lcom/vungle/publisher/Orientation;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setOrientation(Lcom/vungle/publisher/Orientation;)V

    .line 134
    invoke-virtual {v0, v3}, Lcom/vungle/publisher/AdConfig;->setBackButtonImmediatelyEnabled(Z)V

    .line 136
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;

    invoke-direct {v0, p0, p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->setListener(Lcom/vungle/publisher/EventListener;)V

    .line 137
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->attemptNextFetch()V

    .line 139
    const-string v0, "initialized"

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method
