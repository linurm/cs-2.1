.class public Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;
.super Ljava/lang/Object;
.source "MediatedDisplayConfigLoader.java"

# interfaces
.implements Lcom/heyzap/mediation/display/DisplayConfigLoader;


# static fields
.field protected static final ATTEMPTS_BEFORE_CACHE:I = 0x3

.field private static final MEDIATION_CACHE_KEY:Ljava/lang/String; = "mediation_cache"

.field private static final SHARED_PREFS:Ljava/lang/String; = "heyzap.mediation_display_config_loader"


# instance fields
.field private final contextRef:Lcom/heyzap/internal/ContextReference;

.field private currentConfigFuture:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/display/DisplayConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/ContextReference;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;-><init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 45
    iput-object p2, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;

    return-object v0
.end method

.method static synthetic access$100(Lorg/json/JSONObject;)Lcom/heyzap/mediation/display/DisplayConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->makeDisplayConfig(Lorg/json/JSONObject;)Lcom/heyzap/mediation/display/DisplayConfig;

    move-result-object v0

    return-object v0
.end method

.method private fetchNext()V
    .locals 9

    .prologue
    .line 99
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->currentConfigFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 102
    invoke-direct {p0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->getParams()Lcom/heyzap/http/RequestParams;

    move-result-object v1

    .line 104
    new-instance v7, Lcom/heyzap/internal/RetryManager;

    new-instance v8, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;

    invoke-direct {v8, p0, v0, v1}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;-><init>(Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/http/RequestParams;)V

    new-instance v1, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v6}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    iget-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v7, v8, v1, v0}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v7}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 158
    return-void
.end method

.method protected static getMediateCache(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 80
    const-string v1, "heyzap.mediation_display_config_loader"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "mediation_cache"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    :goto_0
    return-object v0

    .line 87
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getParams()Lcom/heyzap/http/RequestParams;
    .locals 3

    .prologue
    .line 161
    new-instance v1, Lcom/heyzap/http/RequestParams;

    invoke-direct {v1}, Lcom/heyzap/http/RequestParams;-><init>()V

    .line 163
    iget-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 165
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 166
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 168
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v0, :cond_0

    const-string v0, "landscape"

    .line 169
    :goto_0
    const-string v2, "orientation"

    invoke-virtual {v1, v2, v0}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-object v1

    .line 168
    :cond_0
    const-string v0, "portrait"

    goto :goto_0
.end method

.method private static makeDisplayConfig(Lorg/json/JSONObject;)Lcom/heyzap/mediation/display/DisplayConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v2, Lcom/heyzap/mediation/display/DisplayConfig;

    invoke-direct {v2, p0}, Lcom/heyzap/mediation/display/DisplayConfig;-><init>(Lorg/json/JSONObject;)V

    .line 66
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 67
    iget-object v0, v2, Lcom/heyzap/mediation/display/DisplayConfig;->networks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/display/DisplayConfig$Network;

    .line 68
    iget-object v1, v0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->creativeTypes:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    iget-object v1, v0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->creativeTypes:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iget-object v1, v0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->creativeTypes:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    iget-object v1, v0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->creativeTypes:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_2
    return-object v2
.end method

.method protected static storeMediateCache(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 95
    const-string v0, "heyzap.mediation_display_config_loader"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mediation_cache"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    return-void
.end method


# virtual methods
.method public declared-synchronized consume()Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/display/DisplayConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->currentConfigFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 59
    invoke-direct {p0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->fetchNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public peek()Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/display/DisplayConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->currentConfigFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    return-object v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->fetchNext()V

    .line 50
    return-void
.end method
