.class Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1$1;
.super Ljava/lang/Object;
.source "HyprmxAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;->val$fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    sget-object v1, Lcom/heyzap/common/lifecycle/FetchResult;->NOT_READY:Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-static {v0, v1}, Lcom/heyzap/common/concurrency/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->access$500(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$3$1;->retry()V

    .line 192
    :cond_0
    return-void
.end method
