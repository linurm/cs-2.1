.class Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;
.super Ljava/lang/Object;
.source "ApplovinAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->start(Ljava/util/Collection;)Lcom/heyzap/common/concurrency/SettableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

.field final synthetic val$result:Lcom/heyzap/common/concurrency/SettableFuture;

.field final synthetic val$startedUnits:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;Ljava/util/Set;Lcom/heyzap/common/concurrency/SettableFuture;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;->val$startedUnits:Ljava/util/Set;

    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;->val$result:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;->val$startedUnits:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/Constants$AdUnit;

    .line 102
    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

    invoke-static {v3, v0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->access$000(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 103
    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

    invoke-virtual {v3, v0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->access$200(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heyzap/common/concurrency/FutureUtils;->allOf(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->access$100(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 111
    return-void
.end method
