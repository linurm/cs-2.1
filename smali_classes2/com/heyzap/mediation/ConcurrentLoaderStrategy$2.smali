.class Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;
.super Ljava/lang/Object;
.source "ConcurrentLoaderStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->startAdapter(Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

.field final synthetic val$fetchFuture:Lcom/heyzap/common/concurrency/ListenableFuture;

.field final synthetic val$networkConfig:Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/ConcurrentLoaderStrategy;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;->this$0:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    iput-object p2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;->val$fetchFuture:Lcom/heyzap/common/concurrency/ListenableFuture;

    iput-object p3, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;->val$networkConfig:Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;->val$fetchFuture:Lcom/heyzap/common/concurrency/ListenableFuture;

    invoke-interface {v0}, Lcom/heyzap/common/concurrency/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;->this$0:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    iget-object v1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;->val$networkConfig:Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;

    iget-wide v2, v1, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->load:D

    invoke-static {v0, v2, v3}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->access$126(Lcom/heyzap/mediation/ConcurrentLoaderStrategy;D)D

    .line 84
    iget-object v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;->this$0:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    invoke-static {v0}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->access$000(Lcom/heyzap/mediation/ConcurrentLoaderStrategy;)V

    .line 85
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
