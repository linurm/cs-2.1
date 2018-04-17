.class Lcom/jirbo/adcolony/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/jirbo/adcolony/AdColonyAd;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1

    .prologue
    .line 334
    if-nez p1, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iput-object v0, p0, Lcom/jirbo/adcolony/a$a;->a:Lcom/jirbo/adcolony/AdColonyAd;

    .line 336
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/a$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 337
    return-void

    .line 335
    :cond_0
    iput-object p1, p0, Lcom/jirbo/adcolony/a$a;->a:Lcom/jirbo/adcolony/AdColonyAd;

    goto :goto_0
.end method

.method public b(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1

    .prologue
    .line 341
    if-nez p1, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iput-object v0, p0, Lcom/jirbo/adcolony/a$a;->a:Lcom/jirbo/adcolony/AdColonyAd;

    .line 343
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/a$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 344
    return-void

    .line 342
    :cond_0
    iput-object p1, p0, Lcom/jirbo/adcolony/a$a;->a:Lcom/jirbo/adcolony/AdColonyAd;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 349
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 352
    :pswitch_0
    const-string v0, "skip"

    iget-object v1, p0, Lcom/jirbo/adcolony/a$a;->a:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0, v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 353
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_1

    .line 355
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    const/4 v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/AdColonyAd;->f:I

    .line 356
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyAd;->a()V

    .line 361
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_0

    .line 363
    sput-object v6, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    goto :goto_0

    .line 368
    :pswitch_1
    new-instance v0, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 369
    sget-object v1, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v1, :cond_2

    const-string v1, "html5_endcard_loading_started"

    sget-object v2, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->k:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 370
    :cond_2
    sget-object v1, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v1, :cond_3

    const-string v1, "html5_endcard_loading_finished"

    sget-object v2, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->l:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 371
    :cond_3
    sget-object v1, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v1, :cond_4

    const-string v1, "html5_endcard_loading_time"

    sget-object v2, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v2, v2, Lcom/jirbo/adcolony/ADCVideo;->p:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;D)V

    .line 372
    :cond_4
    sget-object v1, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v1, :cond_5

    const-string v1, "html5_endcard_loading_timeout"

    sget-object v2, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->m:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 373
    :cond_5
    sget-object v1, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v2, v1, Lcom/jirbo/adcolony/ADCVideo;->q:D

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_6

    const-string v1, "endcard_time_spent"

    sget-object v2, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v2, v2, Lcom/jirbo/adcolony/ADCVideo;->q:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;D)V

    .line 374
    :cond_6
    const-string v1, "endcard_dissolved"

    sget-object v2, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->n:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 375
    const-string v1, "replay"

    sget-object v2, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 376
    const-string v1, "reward"

    sget-object v2, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->o:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 387
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v2, "continue"

    iget-object v3, p0, Lcom/jirbo/adcolony/a$a;->a:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 389
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_7

    .line 391
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    const/4 v1, 0x4

    iput v1, v0, Lcom/jirbo/adcolony/AdColonyAd;->f:I

    .line 392
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyAd;->a()V

    .line 394
    :cond_7
    sget-object v0, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    iput-object v6, v0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/ad;

    .line 395
    sput-object v6, Lcom/jirbo/adcolony/a;->V:Lcom/jirbo/adcolony/ADCVideo;

    goto/16 :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
