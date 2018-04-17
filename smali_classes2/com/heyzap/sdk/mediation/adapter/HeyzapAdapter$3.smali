.class Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$3;
.super Ljava/lang/Object;
.source "HeyzapAdapter.java"

# interfaces
.implements Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->addFetchStartedListener(Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
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
        "Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

.field final synthetic val$fetchStartedListener:Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$3;->val$fetchStartedListener:Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$3;->val$fetchStartedListener:Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;

    iget-object v1, p2, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-interface {v0, p1, v1}, Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/common/concurrency/SettableFuture;)V

    .line 188
    return-void
.end method

.method public bridge synthetic onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 184
    check-cast p2, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$3;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;)V

    return-void
.end method
