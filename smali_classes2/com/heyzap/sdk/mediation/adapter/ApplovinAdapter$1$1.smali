.class Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1$1;
.super Ljava/lang/Object;
.source "ApplovinAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;->val$result:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method
