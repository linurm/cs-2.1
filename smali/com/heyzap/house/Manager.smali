.class public Lcom/heyzap/house/Manager;
.super Ljava/lang/Object;
.source "Manager.java"


# static fields
.field public static final ACTION_URL_PLACEHOLDER:Ljava/lang/String; = "market://details?id=%s&referrer=%s"

.field public static final ACTION_URL_REFERRER:Ljava/lang/String; = "utm_source%3Dheyzap%26utm_medium%3Dmobile%26utm_campaign%3Dheyzap_ad_network"

.field public static AD_SERVER:Ljava/lang/String; = null

.field public static final FIRST_RUN_KEY:Ljava/lang/String; = "HeyzapAdsFirstRun"

.field public static final MAX_CACHE_SIZE:J = 0x1c9c380L

.field public static SLOW_CLOSE:Ljava/lang/Boolean;

.field public static applicationContext:Landroid/content/Context;

.field private static displayCache:Lcom/heyzap/house/request/DisplayCache;

.field private static fileCache:Lcom/heyzap/common/cache/FileCache;

.field public static final handler:Landroid/os/Handler;

.field private static initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/heyzap/common/concurrency/SettableFuture;",
            ">;"
        }
    .end annotation
.end field

.field public static lastActivity:Lcom/heyzap/house/abstr/AbstractActivity;

.field public static maxClickDifference:J

.field private static volatile ref:Lcom/heyzap/house/Manager;

.field public static started:Ljava/lang/Boolean;


# instance fields
.field private contextRef:Lcom/heyzap/internal/ContextReference;

.field private flags:I

.field public lastClickedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/heyzap/house/Manager;->maxClickDifference:J

    .line 32
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/heyzap/house/Manager;->SLOW_CLOSE:Ljava/lang/Boolean;

    .line 34
    const-string v0, "http://ads.heyzap.com/in_game_api/ads"

    sput-object v0, Lcom/heyzap/house/Manager;->AD_SERVER:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/heyzap/house/Manager;->handler:Landroid/os/Handler;

    .line 43
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/heyzap/house/Manager;->started:Ljava/lang/Boolean;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/heyzap/house/Manager;->lastActivity:Lcom/heyzap/house/abstr/AbstractActivity;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/heyzap/house/Manager;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Lcom/heyzap/internal/ContextReference;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heyzap/house/Manager;->lastClickedTime:J

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/heyzap/house/Manager;->flags:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/house/Manager;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 57
    invoke-virtual {p0, p2}, Lcom/heyzap/house/Manager;->setPublisherId(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/heyzap/house/Manager;->setContextRef(Lcom/heyzap/internal/ContextReference;)V

    .line 59
    invoke-virtual {p0}, Lcom/heyzap/house/Manager;->clearAndCreateImageFileCache()V

    .line 60
    new-instance v0, Lcom/heyzap/house/request/DisplayCache;

    invoke-direct {v0}, Lcom/heyzap/house/request/DisplayCache;-><init>()V

    sput-object v0, Lcom/heyzap/house/Manager;->displayCache:Lcom/heyzap/house/request/DisplayCache;

    .line 61
    new-instance v0, Lcom/heyzap/common/cache/FileCache;

    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/heyzap/internal/Utils;->getCacheDirAbsolutePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v4, 0x1c9c380

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/common/cache/FileCache;-><init>(Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/lang/Long;)V

    sput-object v0, Lcom/heyzap/house/Manager;->fileCache:Lcom/heyzap/common/cache/FileCache;

    .line 65
    return-void
.end method

.method static synthetic access$000()Lcom/heyzap/house/Manager;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/heyzap/house/Manager;->ref:Lcom/heyzap/house/Manager;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/heyzap/house/Manager;
    .locals 3

    .prologue
    .line 233
    const-class v1, Lcom/heyzap/house/Manager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/heyzap/house/Manager;->ref:Lcom/heyzap/house/Manager;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Heyzap has not been started yet! Start Heyzap by calling HeyzapAds.start(<your-publisher-id>) in your launch Activity."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 238
    :cond_0
    :try_start_1
    sget-object v0, Lcom/heyzap/house/Manager;->ref:Lcom/heyzap/house/Manager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static isStarted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/heyzap/house/Manager;->started:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method

.method public static setAdsHost(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 246
    invoke-static {p0}, Lcom/heyzap/house/request/FetchRequest;->setDefaultHost(Ljava/lang/String;)V

    .line 247
    sput-object p0, Lcom/heyzap/common/net/APIClient;->DOMAIN:Ljava/lang/String;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/in_game_api/ads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heyzap/house/Manager;->AD_SERVER:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public static start(Lcom/heyzap/internal/ContextReference;Ljava/lang/String;)Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 78
    sget-object v2, Lcom/heyzap/house/Manager;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    .line 86
    new-instance v2, Lcom/heyzap/house/Manager;

    invoke-direct {v2, p0, p1}, Lcom/heyzap/house/Manager;-><init>(Lcom/heyzap/internal/ContextReference;Ljava/lang/String;)V

    sput-object v2, Lcom/heyzap/house/Manager;->ref:Lcom/heyzap/house/Manager;

    .line 88
    invoke-virtual {p0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.heyzap.sdk.ads"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 89
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 92
    const-string v4, "ran_once"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 96
    :cond_1
    if-eqz v0, :cond_2

    .line 97
    const-string v0, "Running first run tasks"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/heyzap/house/handler/AttributionHandler;->getInstance()Lcom/heyzap/house/handler/AttributionHandler;

    move-result-object v0

    sget-object v2, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/heyzap/house/handler/AttributionHandler;->doSelfInstall(Landroid/content/Context;)V

    .line 99
    const-string v0, "ran_once"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/PackageManager;->checkInstalledPackages(Landroid/content/Context;)V

    .line 106
    sget-object v0, Lcom/heyzap/house/Manager;->ref:Lcom/heyzap/house/Manager;

    invoke-virtual {v0}, Lcom/heyzap/house/Manager;->getFileCache()Lcom/heyzap/common/cache/FileCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/common/cache/FileCache;->open()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    .line 107
    new-instance v0, Lcom/heyzap/house/Manager$1;

    invoke-direct {v0}, Lcom/heyzap/house/Manager$1;-><init>()V

    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 115
    sget-object v0, Lcom/heyzap/house/Manager;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/heyzap/common/concurrency/FutureUtils;->bind(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/concurrent/ExecutorService;)V

    .line 117
    sget-object v0, Lcom/heyzap/house/Manager;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/house/Manager$2;

    invoke-direct {v1}, Lcom/heyzap/house/Manager$2;-><init>()V

    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 127
    :cond_3
    sget-object v0, Lcom/heyzap/house/Manager;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method


# virtual methods
.method public clearAndCreateFileCache()V
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->getCacheDirAbsolutePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/heyzap/internal/Utils;->deleteDirectory(Ljava/io/File;)V

    .line 183
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clearAndCreateImageFileCache()V
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->getImageCacheDirAbsolutePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 194
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/heyzap/internal/Utils;->deleteDirectory(Ljava/io/File;)V

    .line 199
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayCache()Lcom/heyzap/house/request/DisplayCache;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/heyzap/house/Manager;->displayCache:Lcom/heyzap/house/request/DisplayCache;

    return-object v0
.end method

.method public getFileCache()Lcom/heyzap/common/cache/FileCache;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/heyzap/house/Manager;->fileCache:Lcom/heyzap/common/cache/FileCache;

    return-object v0
.end method

.method public getLocalPackages()Ljava/util/List;
    .locals 5
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
    .line 139
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    .line 143
    :cond_0
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 149
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "android."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.samsung"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.monotype"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.verizon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.qualcomm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.vzw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 162
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 165
    goto/16 :goto_0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public installHeyzap(Lcom/heyzap/house/model/AdModel;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public isFlagEnabled(I)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/heyzap/house/Manager;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContextRef(Lcom/heyzap/internal/ContextReference;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/heyzap/house/Manager;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 217
    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .prologue
    .line 223
    iput p1, p0, Lcom/heyzap/house/Manager;->flags:I

    .line 224
    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iput-object p1, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->publisherId:Ljava/lang/String;

    .line 209
    return-void
.end method
