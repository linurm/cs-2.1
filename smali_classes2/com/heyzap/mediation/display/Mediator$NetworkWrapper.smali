.class public Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/display/Mediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkWrapper"
.end annotation


# instance fields
.field public final fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/common/lifecycle/FetchResult;",
            ">;"
        }
    .end annotation
.end field

.field public final networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field public final networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

.field public rejected:Z

.field public rejectionCause:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/mediation/display/DisplayConfig$Network;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/common/lifecycle/FetchResult;",
            ">;",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            "Lcom/heyzap/mediation/display/DisplayConfig$Network;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->rejected:Z

    .line 22
    iput-object p1, p0, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->fetchResultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 23
    iput-object p2, p0, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 24
    iput-object p3, p0, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    .line 25
    return-void
.end method


# virtual methods
.method public getRejectionCause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->rejectionCause:Ljava/lang/String;

    return-object v0
.end method

.method setRejected(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->rejected:Z

    .line 33
    iput-object p1, p0, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->rejectionCause:Ljava/lang/String;

    .line 34
    return-void
.end method
