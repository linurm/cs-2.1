.class Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$6;
.super Ljava/lang/Object;
.source "StatusListenerMultiplexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->addFetch(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Lcom/heyzap/common/concurrency/ListenableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

.field final synthetic val$fetchSuccessFuture:Lcom/heyzap/common/concurrency/SettableFuture;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$6;->this$0:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iput-object p2, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$6;->val$fetchSuccessFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object p3, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$6;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$6;->val$fetchSuccessFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$6;->this$0:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    invoke-static {v0}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->access$000(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    .line 171
    if-eqz v1, :cond_0

    .line 172
    iget-object v3, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$6;->val$tag:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onAvailable(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_0
    iget-object v3, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$6;->val$tag:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onFailedToFetch(Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_1
    return-void

    .line 166
    :catch_0
    move-exception v0

    goto :goto_0

    .line 164
    :catch_1
    move-exception v0

    goto :goto_0
.end method
