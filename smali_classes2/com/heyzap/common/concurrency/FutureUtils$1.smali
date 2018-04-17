.class final Lcom/heyzap/common/concurrency/FutureUtils$1;
.super Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;
.source "FutureUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/concurrency/FutureUtils;->anyOf(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/common/concurrency/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$errorsSeen:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$futures:Ljava/util/List;

.field final synthetic val$resultFuture:Lcom/heyzap/common/concurrency/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .prologue
    .line 21
    iput-object p2, p0, Lcom/heyzap/common/concurrency/FutureUtils$1;->val$resultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object p3, p0, Lcom/heyzap/common/concurrency/FutureUtils$1;->val$futures:Ljava/util/List;

    iput-object p4, p0, Lcom/heyzap/common/concurrency/FutureUtils$1;->val$errorsSeen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, p1}, Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/common/concurrency/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    if-nez p2, :cond_1

    .line 25
    iget-object v0, p0, Lcom/heyzap/common/concurrency/FutureUtils$1;->val$resultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/heyzap/common/concurrency/FutureUtils$1;->val$futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/heyzap/common/concurrency/FutureUtils$1;->val$errorsSeen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/heyzap/common/concurrency/FutureUtils$1;->val$resultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "All futures failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
