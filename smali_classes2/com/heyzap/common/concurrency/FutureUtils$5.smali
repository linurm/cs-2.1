.class final Lcom/heyzap/common/concurrency/FutureUtils$5;
.super Ljava/lang/Object;
.source "FutureUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/concurrency/FutureUtils;->bind(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$destFuture:Lcom/heyzap/common/concurrency/SettableFuture;

.field final synthetic val$sourceFuture:Lcom/heyzap/common/concurrency/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/common/concurrency/SettableFuture;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/heyzap/common/concurrency/FutureUtils$5;->val$destFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object p2, p0, Lcom/heyzap/common/concurrency/FutureUtils$5;->val$sourceFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/common/concurrency/FutureUtils$5;->val$destFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iget-object v1, p0, Lcom/heyzap/common/concurrency/FutureUtils$5;->val$sourceFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v1}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    iget-object v1, p0, Lcom/heyzap/common/concurrency/FutureUtils$5;->val$destFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
