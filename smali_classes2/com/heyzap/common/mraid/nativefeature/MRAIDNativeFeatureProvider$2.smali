.class Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider$2;
.super Ljava/lang/Object;
.source "MRAIDNativeFeatureProvider.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;->storePictureInGallery(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;


# direct methods
.method constructor <init>(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider$2;->this$0:Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File saves successfully to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 222
    return-void
.end method
