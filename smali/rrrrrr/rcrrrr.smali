.class public Lrrrrrr/rcrrrr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/controllers/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "rcrrrr"
.end annotation


# instance fields
.field public final synthetic bС04210421042104210421:Lcom/immersion/hapticmediasdk/controllers/MediaController;


# direct methods
.method public constructor <init>(Lcom/immersion/hapticmediasdk/controllers/MediaController;)V
    .locals 0

    iput-object p1, p0, Lrrrrrr/rcrrrr;->bС04210421042104210421:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lrrrrrr/rcrrrr;->bС04210421042104210421:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrrrrrr/rcrrrr;->bС04210421042104210421:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->bъ044A044Aъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;)Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrrrrrr/rcrrrr;->bС04210421042104210421:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->bъ044A044Aъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;)Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    move-result-object v0

    iget-object v1, p0, Lrrrrrr/rcrrrr;->bС04210421042104210421:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lrrrrrr/rcrrrr;->bС04210421042104210421:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-virtual {v2}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->getReferenceTimeForCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->syncUpdate(IJ)V

    iget-object v0, p0, Lrrrrrr/rcrrrr;->bС04210421042104210421:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->bъ044A044Aъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;)Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lrrrrrr/rcrrrr;->bС04210421042104210421:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->bъ044A044Aъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;)Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
