.class Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;
.super Ljava/lang/Object;
.source "UnityadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchHolder"
.end annotation


# instance fields
.field public final fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/common/lifecycle/FetchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 394
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/common/lifecycle/FetchResult;)V
    .locals 1

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    .line 398
    invoke-virtual {v0, p1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 399
    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 400
    return-void
.end method
