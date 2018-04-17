.class Lcom/heyzap/house/model/VideoModel$2;
.super Ljava/lang/Object;
.source "VideoModel.java"

# interfaces
.implements Lcom/heyzap/internal/GenericCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/model/VideoModel;->doPostFetchActions(Landroid/content/Context;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/model/VideoModel;


# direct methods
.method constructor <init>(Lcom/heyzap/house/model/VideoModel;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/heyzap/house/model/VideoModel$2;->this$0:Lcom/heyzap/house/model/VideoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 271
    const-string v0, "(HTML ASSETS CACHED) %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/heyzap/house/model/VideoModel$2;->this$0:Lcom/heyzap/house/model/VideoModel;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    return-void
.end method
