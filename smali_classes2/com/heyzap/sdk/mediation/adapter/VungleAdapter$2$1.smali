.class Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "VungleAdapter.java"


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
    .line 235
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$1;->val$holder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$1;->val$holder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$1;->val$holder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$1;->retry()V

    .line 244
    :cond_1
    return-void
.end method
