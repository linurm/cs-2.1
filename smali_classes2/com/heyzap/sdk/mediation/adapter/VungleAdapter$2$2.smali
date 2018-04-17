.class Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$2;
.super Ljava/lang/Object;
.source "VungleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;

.field final synthetic val$holder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$2;->this$1:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$2;->val$holder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$2;->val$holder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    sget-object v1, Lcom/heyzap/common/lifecycle/FetchResult;->NOT_READY:Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-static {v0, v1}, Lcom/heyzap/common/concurrency/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$2;->this$1:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$200()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$2;->this$1:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;->retry()V

    .line 258
    :cond_0
    return-void
.end method
