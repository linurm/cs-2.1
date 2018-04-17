.class final Lcom/heyzap/house/abstr/AbstractFetchHandler$1;
.super Ljava/lang/Object;
.source "AbstractFetchHandler.java"

# interfaces
.implements Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/house/abstr/AbstractFetchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchResponse(Ljava/util/List;Lcom/heyzap/house/request/FetchRequest;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/house/model/AdModel;",
            ">;",
            "Lcom/heyzap/house/request/FetchRequest;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    if-eqz p3, :cond_0

    .line 34
    const-string v0, "No fetch callback handler registered"

    invoke-static {v0, p3}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :goto_0
    return-void

    .line 36
    :cond_0
    const-string v0, "(FETCH) No fetch callback handler registered."

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onModelsReceived(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/house/model/AdModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    return-void
.end method
