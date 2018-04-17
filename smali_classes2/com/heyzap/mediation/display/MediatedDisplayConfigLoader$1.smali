.class Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "MediatedDisplayConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->fetchNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private attempts:I

.field final synthetic this$0:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

.field final synthetic val$displayConfigFuture:Lcom/heyzap/common/concurrency/SettableFuture;

.field final synthetic val$params:Lcom/heyzap/http/RequestParams;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/http/RequestParams;)V
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->this$0:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    iput-object p2, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->val$displayConfigFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object p3, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->val$params:Lcom/heyzap/http/RequestParams;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->attempts:I

    return-void
.end method


# virtual methods
.method public retry()V
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->attempts:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 110
    iget v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->attempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->attempts:I

    .line 111
    invoke-super {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;->retry()V

    .line 128
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->this$0:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    invoke-static {v0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->access$000(Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->getMediateCache(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    .line 119
    :try_start_0
    invoke-static {v0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->access$100(Lorg/json/JSONObject;)Lcom/heyzap/mediation/display/DisplayConfig;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->val$displayConfigFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->attempts:I

    .line 125
    invoke-super {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;->retry()V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->this$0:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    invoke-static {v0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->access$000(Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://med.heyzap.com/mediate"

    iget-object v2, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->val$params:Lcom/heyzap/http/RequestParams;

    new-instance v3, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1$1;

    invoke-direct {v3, p0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1$1;-><init>(Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/heyzap/common/net/APIClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 156
    return-void
.end method
