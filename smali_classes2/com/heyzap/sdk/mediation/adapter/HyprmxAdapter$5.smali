.class Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$5;
.super Ljava/lang/Object;
.source "HyprmxAdapter.java"

# interfaces
.implements Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->addFetchStartedListener(Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener",
        "<",
        "Lcom/heyzap/common/concurrency/SettableFuture",
        "<",
        "Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

.field final synthetic val$fetchStartedListener:Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$5;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$5;->val$fetchStartedListener:Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/common/concurrency/SettableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$5;->val$fetchStartedListener:Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;

    invoke-interface {v0, p1, p2}, Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/common/concurrency/SettableFuture;)V

    .line 262
    return-void
.end method

.method public bridge synthetic onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 258
    check-cast p2, Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$5;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/common/concurrency/SettableFuture;)V

    return-void
.end method
