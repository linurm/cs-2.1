.class final Lcom/heyzap/common/lifecycle/EventStream$3;
.super Ljava/lang/Object;
.source "EventStream.java"

# interfaces
.implements Lcom/heyzap/common/lifecycle/EventStream$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/lifecycle/EventStream;->bind(Lcom/heyzap/common/lifecycle/EventStream;Lcom/heyzap/common/lifecycle/EventStream;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/heyzap/common/lifecycle/EventStream$EventListener",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$dest:Lcom/heyzap/common/lifecycle/EventStream;


# direct methods
.method constructor <init>(Lcom/heyzap/common/lifecycle/EventStream;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/heyzap/common/lifecycle/EventStream$3;->val$dest:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/heyzap/common/lifecycle/EventStream$3;->val$dest:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v0, p1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 63
    return-void
.end method
