.class Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "MediationConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/config/MediationConfigLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/config/MediationConfigLoader$1;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->retry()V

    .line 140
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 9

    .prologue
    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v0, v0, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-static {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$000(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$100(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 124
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v0, v0, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-static {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$200(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/heyzap/mediation/config/MediationConfig;

    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v1, v1, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-static {v1}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$000(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v2, v2, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-static {v2}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$300(Lcom/heyzap/mediation/config/MediationConfigLoader;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v2, v2, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-static {v2}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$400(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/FetchRequestStore;

    move-result-object v4

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v2, v2, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-static {v2}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$500(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/adapter/AdapterPool;

    move-result-object v5

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v2, v2, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-static {v2}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$600(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    move-result-object v6

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v2, v2, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-static {v2}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$700(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    move-result-object v7

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v2, v2, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-static {v2}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$800(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/filters/FilterManager;

    move-result-object v8

    move-object v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/heyzap/mediation/config/MediationConfig;-><init>(Lcom/heyzap/internal/ContextReference;Lorg/json/JSONObject;Ljava/util/concurrent/ScheduledExecutorService;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/DisplayConfigLoader;Lcom/heyzap/mediation/ConcurrentLoaderStrategy;Lcom/heyzap/mediation/filters/FilterManager;)V

    .line 130
    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    iget-object v1, v1, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-static {v1}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$200(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;->this$1:Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->retry()V

    goto :goto_0
.end method
