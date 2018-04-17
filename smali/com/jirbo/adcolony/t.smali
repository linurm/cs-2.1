.class Lcom/jirbo/adcolony/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jirbo/adcolony/ADCDownload$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/t$a;
    }
.end annotation


# instance fields
.field a:Lcom/jirbo/adcolony/d;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/t$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/t$a;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Z

.field f:I

.field g:Lcom/jirbo/adcolony/ADCData$c;

.field h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/t;->c:Ljava/util/ArrayList;

    .line 11
    iput v1, p0, Lcom/jirbo/adcolony/t;->d:I

    .line 12
    iput-boolean v1, p0, Lcom/jirbo/adcolony/t;->e:Z

    .line 14
    new-instance v0, Lcom/jirbo/adcolony/ADCData$c;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$c;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/t;->g:Lcom/jirbo/adcolony/ADCData$c;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/t;->h:Ljava/util/HashMap;

    .line 21
    iput-object p1, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    .line 22
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/jirbo/adcolony/t;->b()V

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/t;->d:I

    .line 192
    return-void
.end method

.method a(DLcom/jirbo/adcolony/AdColonyAd;)V
    .locals 17

    .prologue
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    .line 153
    if-nez p3, :cond_1

    .line 155
    sget-object v4, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v5, "Ad object is released and null in track_video_progress"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/jirbo/adcolony/AdColonyAd;->p:D

    .line 159
    cmpg-double v6, p1, v4

    if-ltz v6, :cond_0

    .line 160
    cmpg-double v6, v4, v8

    if-gez v6, :cond_2

    cmpl-double v6, p1, v8

    if-ltz v6, :cond_2

    .line 162
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/AdColonyAd;->h:Ljava/lang/String;

    invoke-static {v6}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/AdColonyAd;->l:Ljava/lang/String;

    const-string v7, "native"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "native_first_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 165
    :cond_2
    :goto_1
    cmpg-double v6, v4, v10

    if-gez v6, :cond_3

    cmpl-double v6, p1, v10

    if-ltz v6, :cond_3

    .line 167
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/AdColonyAd;->h:Ljava/lang/String;

    invoke-static {v6}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/AdColonyAd;->l:Ljava/lang/String;

    const-string v7, "native"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "native_midpoint"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 170
    :cond_3
    :goto_2
    cmpg-double v6, v4, v12

    if-gez v6, :cond_4

    cmpl-double v6, p1, v12

    if-ltz v6, :cond_4

    .line 172
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/AdColonyAd;->h:Ljava/lang/String;

    invoke-static {v6}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/AdColonyAd;->l:Ljava/lang/String;

    const-string v7, "native"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "native_third_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 175
    :cond_4
    :goto_3
    cmpg-double v4, v4, v14

    if-gez v4, :cond_5

    cmpl-double v4, p1, v14

    if-ltz v4, :cond_5

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/jirbo/adcolony/AdColonyAd;->l:Ljava/lang/String;

    const-string v5, "native"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 177
    sget-object v4, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v5, "Tracking ad event - complete"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    .line 178
    new-instance v4, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v4}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 179
    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/jirbo/adcolony/AdColonyAd;->t:Z

    if-eqz v5, :cond_9

    const-string v5, "ad_slot"

    sget-object v6, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v6, v6, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget v6, v6, Lcom/jirbo/adcolony/u;->j:I

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 181
    :goto_4
    const-string v5, "replay"

    move-object/from16 v0, p3

    iget-boolean v6, v0, Lcom/jirbo/adcolony/AdColonyAd;->u:Z

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 182
    const-string v5, "complete"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v4, v1}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 183
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/jirbo/adcolony/n$a;->r:Z

    .line 185
    :cond_5
    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    iput-wide v0, v2, Lcom/jirbo/adcolony/AdColonyAd;->p:D

    goto/16 :goto_0

    .line 163
    :cond_6
    const-string v6, "first_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    goto/16 :goto_1

    .line 168
    :cond_7
    const-string v6, "midpoint"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    goto/16 :goto_2

    .line 173
    :cond_8
    const-string v6, "third_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    goto :goto_3

    .line 180
    :cond_9
    const-string v5, "ad_slot"

    sget-object v6, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v6, v6, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget v6, v6, Lcom/jirbo/adcolony/u;->j:I

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    goto :goto_4
.end method

.method a(Lcom/jirbo/adcolony/ADCData$c;)V
    .locals 2

    .prologue
    .line 420
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCData$c;->i()I

    move-result v0

    if-lez v0, :cond_0

    .line 422
    new-instance v0, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 423
    const-string v1, "downloads"

    invoke-virtual {v0, v1, p1}, Lcom/jirbo/adcolony/ADCData$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$i;)V

    .line 424
    const-string v1, "assets"

    invoke-virtual {p0, v1, v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;)V

    .line 426
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->l:Lcom/jirbo/adcolony/n$f;

    .line 48
    if-eqz v0, :cond_0

    .line 50
    iget-object v0, v0, Lcom/jirbo/adcolony/n$f;->i:Lcom/jirbo/adcolony/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->m:Lcom/jirbo/adcolony/n$y;

    .line 54
    if-eqz v0, :cond_1

    .line 56
    iget-object v0, v0, Lcom/jirbo/adcolony/n$y;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 58
    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 69
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "No such event type:"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 90
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "native_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget v1, v0, Lcom/jirbo/adcolony/u;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/u;->j:I

    .line 81
    :cond_2
    :goto_1
    if-nez p2, :cond_3

    .line 83
    new-instance p2, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {p2}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 84
    const-string v0, "replay"

    iget-boolean v1, p3, Lcom/jirbo/adcolony/AdColonyAd;->u:Z

    invoke-virtual {p2, v0, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 87
    :cond_3
    const-string v0, "s_imp_count"

    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget v1, v1, Lcom/jirbo/adcolony/u;->j:I

    invoke-virtual {p2, v0, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 88
    iget-object v0, p3, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 89
    iget-object v0, p3, Lcom/jirbo/adcolony/AdColonyAd;->C:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 76
    :cond_4
    const-string v0, "skip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 78
    iget-object v0, p3, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jirbo/adcolony/n$a;->r:Z

    goto :goto_1
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    .line 30
    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Ad request for zone "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 33
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jirbo/adcolony/n$ad;->l:Lcom/jirbo/adcolony/n$ae;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/jirbo/adcolony/n$ad;->l:Lcom/jirbo/adcolony/n$ae;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$ae;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 37
    iget v2, p2, Lcom/jirbo/adcolony/AdColonyAd;->g:I

    if-nez v2, :cond_2

    const-string v2, "request_denied"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 39
    :goto_1
    const-string v2, "request_denied_reason"

    iget v3, p2, Lcom/jirbo/adcolony/AdColonyAd;->g:I

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 40
    const-string v2, "request"

    iget-object v3, v0, Lcom/jirbo/adcolony/n$ad;->l:Lcom/jirbo/adcolony/n$ae;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$ae;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1, p2}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 41
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "Tracking ad request - URL : "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->l:Lcom/jirbo/adcolony/n$ae;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ae;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    goto :goto_0

    .line 38
    :cond_2
    const-string v2, "request_denied"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 95
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 98
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    if-nez p3, :cond_2

    new-instance p3, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {p3}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 101
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/aa;->b()Ljava/lang/String;

    move-result-object v0

    .line 102
    if-eqz p4, :cond_3

    const-string v1, "asi"

    iget-object v2, p4, Lcom/jirbo/adcolony/AdColonyAd;->m:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_3
    invoke-static {}, Lcom/jirbo/adcolony/aa;->c()D

    move-result-wide v2

    iget-object v1, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget-wide v4, v1, Lcom/jirbo/adcolony/u;->g:D

    sub-double/2addr v2, v4

    .line 105
    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4

    const-wide v4, 0x4122750000000000L    # 604800.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_4

    .line 107
    :cond_4
    const-string v1, "s_time"

    sget-object v2, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget-wide v2, v2, Lcom/jirbo/adcolony/u;->i:D

    invoke-virtual {p3, v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;D)V

    .line 108
    const-string v1, "sid"

    iget-object v2, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget-object v2, v2, Lcom/jirbo/adcolony/u;->k:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "guid"

    invoke-virtual {p3, v1, v0}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "guid_key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "DUBu6wJ27y6xs7VWmNDw67DD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/aa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/jirbo/adcolony/t$a;

    invoke-direct {v0}, Lcom/jirbo/adcolony/t$a;-><init>()V

    .line 113
    iput-object p1, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    .line 114
    iput-object p2, v0, Lcom/jirbo/adcolony/t$a;->b:Ljava/lang/String;

    .line 115
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "EVENT ---------------------------"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 116
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "EVENT - TYPE = "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 117
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "EVENT - URL  = "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 118
    invoke-virtual {p3}, Lcom/jirbo/adcolony/ADCData$g;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jirbo/adcolony/t$a;->c:Ljava/lang/String;

    .line 120
    const-string v1, "reward_v4vc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    const-string v1, "v4vc_name"

    invoke-virtual {p3, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jirbo/adcolony/t$a;->d:Ljava/lang/String;

    .line 123
    const-string v1, "v4vc_amount"

    invoke-virtual {p3, v1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jirbo/adcolony/t$a;->h:I

    .line 126
    :cond_5
    iget-object v1, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iput-boolean v6, p0, Lcom/jirbo/adcolony/t;->e:Z

    .line 129
    sput-boolean v6, Lcom/jirbo/adcolony/a;->z:Z

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 134
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 138
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    new-instance v2, Lcom/jirbo/adcolony/t$a;

    invoke-direct {v2}, Lcom/jirbo/adcolony/t$a;-><init>()V

    .line 141
    iput-object p1, v2, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    .line 142
    iput-object v0, v2, Lcom/jirbo/adcolony/t$a;->b:Ljava/lang/String;

    .line 143
    iput-boolean v3, v2, Lcom/jirbo/adcolony/t$a;->l:Z

    .line 144
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 147
    :cond_2
    iput-boolean v3, p0, Lcom/jirbo/adcolony/t;->e:Z

    .line 148
    sput-boolean v3, Lcom/jirbo/adcolony/a;->z:Z

    goto :goto_0
.end method

.method b()V
    .locals 6

    .prologue
    .line 196
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->z:Z

    .line 197
    new-instance v0, Lcom/jirbo/adcolony/f;

    const-string v1, "tracking_info.txt"

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/f;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jirbo/adcolony/k;->c(Lcom/jirbo/adcolony/f;)Lcom/jirbo/adcolony/ADCData$c;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_2

    .line 200
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCData$c;->i()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 203
    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ADCData$c;->b(I)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    .line 204
    new-instance v3, Lcom/jirbo/adcolony/t$a;

    invoke-direct {v3}, Lcom/jirbo/adcolony/t$a;-><init>()V

    .line 205
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    .line 206
    const-string v4, "url"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jirbo/adcolony/t$a;->b:Ljava/lang/String;

    .line 207
    const-string v4, "payload"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jirbo/adcolony/t$a;->c:Ljava/lang/String;

    .line 208
    const-string v4, "attempts"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/jirbo/adcolony/t$a;->f:I

    .line 209
    const-string v4, "third_party"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/jirbo/adcolony/t$a;->l:Z

    .line 211
    iget-object v4, v3, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    const-string v5, "v4vc_callback"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    const-string v5, "reward_v4vc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    :cond_0
    const-string v4, "v4vc_name"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jirbo/adcolony/t$a;->d:Ljava/lang/String;

    .line 214
    const-string v4, "v4vc_amount"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/jirbo/adcolony/t$a;->h:I

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Loaded "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(I)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, " events"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 220
    return-void
.end method

.method b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 63
    return-void
.end method

.method c()V
    .locals 6

    .prologue
    .line 224
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 226
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 227
    new-instance v2, Lcom/jirbo/adcolony/ADCData$c;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCData$c;-><init>()V

    .line 228
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 230
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/t$a;

    .line 231
    iget-boolean v3, v0, Lcom/jirbo/adcolony/t$a;->j:Z

    if-nez v3, :cond_3

    .line 233
    iget-object v3, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v3, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v3}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 236
    const-string v4, "type"

    iget-object v5, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v4, "url"

    iget-object v5, v0, Lcom/jirbo/adcolony/t$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v4, v0, Lcom/jirbo/adcolony/t$a;->c:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "payload"

    iget-object v5, v0, Lcom/jirbo/adcolony/t$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    const-string v4, "attempts"

    iget v5, v0, Lcom/jirbo/adcolony/t$a;->f:I

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 240
    iget-object v4, v0, Lcom/jirbo/adcolony/t$a;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 242
    const-string v4, "v4vc_name"

    iget-object v5, v0, Lcom/jirbo/adcolony/t$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v4, "v4vc_amount"

    iget v5, v0, Lcom/jirbo/adcolony/t$a;->h:I

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 245
    :cond_1
    iget-boolean v0, v0, Lcom/jirbo/adcolony/t$a;->l:Z

    if-eqz v0, :cond_2

    const-string v0, "third_party"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 246
    :cond_2
    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCData$c;->a(Lcom/jirbo/adcolony/ADCData$i;)Lcom/jirbo/adcolony/ADCData$c;

    .line 228
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Saving tracking_info ("

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(I)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, " events)"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 252
    new-instance v0, Lcom/jirbo/adcolony/f;

    const-string v1, "tracking_info.txt"

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/f;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/jirbo/adcolony/k;->a(Lcom/jirbo/adcolony/f;Lcom/jirbo/adcolony/ADCData$c;)V

    .line 253
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/jirbo/adcolony/t;->e:Z

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/t;->e:Z

    .line 260
    invoke-virtual {p0}, Lcom/jirbo/adcolony/t;->c()V

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/t;->e()V

    .line 263
    return-void
.end method

.method e()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 267
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    return-void

    .line 269
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 271
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {}, Lcom/jirbo/adcolony/aa;->c()D

    move-result-wide v2

    .line 274
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/t$a;

    .line 277
    iget-wide v4, v0, Lcom/jirbo/adcolony/t$a;->e:D

    cmpg-double v4, v4, v2

    if-gez v4, :cond_6

    iget-boolean v4, v0, Lcom/jirbo/adcolony/t$a;->k:Z

    if-nez v4, :cond_6

    .line 279
    iget v4, p0, Lcom/jirbo/adcolony/t;->d:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 280
    iget v4, p0, Lcom/jirbo/adcolony/t;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jirbo/adcolony/t;->d:I

    .line 281
    iput-boolean v7, v0, Lcom/jirbo/adcolony/t$a;->k:Z

    .line 283
    iget-object v4, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    const-string v5, "v4vc_callback"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 285
    iget v4, p0, Lcom/jirbo/adcolony/t;->f:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/jirbo/adcolony/t;->f:I

    iput v4, v0, Lcom/jirbo/adcolony/t$a;->i:I

    .line 286
    iget-object v4, p0, Lcom/jirbo/adcolony/t;->h:Ljava/util/HashMap;

    iget v5, v0, Lcom/jirbo/adcolony/t$a;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-boolean v6, Lcom/jirbo/adcolony/a;->o:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_3
    new-instance v4, Lcom/jirbo/adcolony/ADCDownload;

    iget-object v5, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v6, v0, Lcom/jirbo/adcolony/t$a;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6, p0}, Lcom/jirbo/adcolony/ADCDownload;-><init>(Lcom/jirbo/adcolony/d;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;)V

    invoke-virtual {v4, v0}, Lcom/jirbo/adcolony/ADCDownload;->a(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCDownload;

    move-result-object v4

    .line 289
    iget-boolean v5, v0, Lcom/jirbo/adcolony/t$a;->l:Z

    if-eqz v5, :cond_4

    iput-boolean v7, v4, Lcom/jirbo/adcolony/ADCDownload;->h:Z

    .line 290
    :cond_4
    iget-object v5, v0, Lcom/jirbo/adcolony/t$a;->c:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 292
    const-string v5, "application/json"

    iget-object v6, v0, Lcom/jirbo/adcolony/t$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCDownload;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jirbo/adcolony/ADCDownload;

    .line 295
    :cond_5
    sget-object v5, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v6, "Submitting \'"

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v5

    iget-object v0, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v5, "\' event."

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 296
    invoke-virtual {v4}, Lcom/jirbo/adcolony/ADCDownload;->b()V

    .line 297
    sput-boolean v7, Lcom/jirbo/adcolony/a;->z:Z

    .line 274
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method public on_download_finished(Lcom/jirbo/adcolony/ADCDownload;)V
    .locals 9
    .param p1, "download"    # Lcom/jirbo/adcolony/ADCDownload;

    .prologue
    const/16 v1, 0x2710

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 304
    sput-boolean v7, Lcom/jirbo/adcolony/a;->z:Z

    .line 305
    iput-boolean v7, p0, Lcom/jirbo/adcolony/t;->e:Z

    .line 306
    iget v0, p0, Lcom/jirbo/adcolony/t;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jirbo/adcolony/t;->d:I

    .line 307
    iget-object v0, p1, Lcom/jirbo/adcolony/ADCDownload;->e:Ljava/lang/Object;

    check-cast v0, Lcom/jirbo/adcolony/t$a;

    .line 308
    sget-object v2, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "on_download_finished - event.type = "

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    iget-object v4, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 309
    iput-boolean v3, v0, Lcom/jirbo/adcolony/t$a;->k:Z

    .line 312
    iget-object v2, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    const-string v4, "session_start"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 317
    :cond_0
    iget-boolean v2, p1, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    .line 318
    if-eqz v2, :cond_1

    iget-object v4, v0, Lcom/jirbo/adcolony/t$a;->c:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 320
    iget-object v2, p1, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    invoke-static {v2}, Lcom/jirbo/adcolony/k;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v4

    .line 321
    if-eqz v4, :cond_9

    .line 323
    const-string v2, "status"

    invoke-virtual {v4, v2}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "success"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 324
    if-eqz v2, :cond_1

    .line 326
    iget-object v5, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    const-string v6, "reward_v4vc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 328
    const-string v5, "v4vc_status"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 330
    const-string v5, "v4vc_callback"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 334
    new-instance v5, Lcom/jirbo/adcolony/t$a;

    invoke-direct {v5}, Lcom/jirbo/adcolony/t$a;-><init>()V

    .line 335
    const-string v6, "v4vc_callback"

    iput-object v6, v5, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    .line 336
    iput-object v4, v5, Lcom/jirbo/adcolony/t$a;->b:Ljava/lang/String;

    .line 337
    iget-object v4, v0, Lcom/jirbo/adcolony/t$a;->d:Ljava/lang/String;

    iput-object v4, v5, Lcom/jirbo/adcolony/t$a;->d:Ljava/lang/String;

    .line 338
    iget v4, v0, Lcom/jirbo/adcolony/t$a;->h:I

    iput v4, v5, Lcom/jirbo/adcolony/t$a;->h:I

    .line 339
    iget-object v4, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    iget-object v4, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    const-string v5, "v4vc_callback"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 364
    sget-object v4, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v5, "v4vc_callback response:"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    move-result-object v4

    iget-object v5, p1, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 365
    iget-object v4, p1, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    const-string v5, "vc_success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_a

    .line 367
    sget-object v4, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    iput-boolean v7, v4, Lcom/jirbo/adcolony/ADCVideo;->o:Z

    .line 368
    :cond_2
    sget-object v4, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v5, "v4vc_callback success"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 369
    iget-object v4, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v5, v0, Lcom/jirbo/adcolony/t$a;->d:Ljava/lang/String;

    iget v6, v0, Lcom/jirbo/adcolony/t$a;->h:I

    invoke-virtual {v4, v7, v5, v6}, Lcom/jirbo/adcolony/d;->a(ZLjava/lang/String;I)V

    .line 384
    :cond_3
    :goto_1
    if-eqz v2, :cond_d

    .line 386
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "Event submission SUCCESS for type: "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    iget-object v2, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 387
    iput-boolean v7, v0, Lcom/jirbo/adcolony/t$a;->j:Z

    .line 412
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/u;->b:Z

    if-nez v0, :cond_5

    .line 414
    invoke-virtual {p0}, Lcom/jirbo/adcolony/t;->c()V

    .line 416
    :cond_5
    return-void

    .line 344
    :cond_6
    sget-object v4, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v4, :cond_7

    sget-object v4, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    iput-boolean v7, v4, Lcom/jirbo/adcolony/ADCVideo;->o:Z

    .line 345
    :cond_7
    sget-object v4, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v5, "Client-side V4VC success"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    goto :goto_0

    .line 351
    :cond_8
    sget-object v4, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v5, "Client-side V4VC failure"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    goto :goto_0

    :cond_9
    move v2, v3

    .line 358
    goto :goto_0

    .line 371
    :cond_a
    iget-object v4, p1, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    const-string v5, "vc_decline"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_b

    iget-object v4, p1, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    const-string v5, "vc_noreward"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_c

    .line 373
    :cond_b
    sget-object v4, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v5, "Server-side V4VC failure: "

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v4

    iget-object v5, p1, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 374
    sget-object v4, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v5, "v4vc_callback declined"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 375
    iget-object v4, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    const-string v5, ""

    invoke-virtual {v4, v3, v5, v3}, Lcom/jirbo/adcolony/d;->a(ZLjava/lang/String;I)V

    goto :goto_1

    .line 379
    :cond_c
    sget-object v2, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v4, "Server-side V4VC failure: "

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    iget-object v4, p1, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    move v2, v3

    .line 380
    goto :goto_1

    .line 391
    :cond_d
    sget-object v2, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "Event submission FAILED for type: "

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    iget-object v4, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    const-string v4, " on try "

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    iget v4, v0, Lcom/jirbo/adcolony/t$a;->f:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/l;->b(I)Lcom/jirbo/adcolony/l;

    .line 392
    iget v2, v0, Lcom/jirbo/adcolony/t$a;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/jirbo/adcolony/t$a;->f:I

    .line 394
    iget v2, v0, Lcom/jirbo/adcolony/t$a;->f:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_e

    .line 396
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v2, "Discarding event after 24 attempts to report."

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 397
    iput-boolean v7, v0, Lcom/jirbo/adcolony/t$a;->j:Z

    .line 399
    iget-object v0, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    const-string v1, "v4vc_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    const-string v1, ""

    invoke-virtual {v0, v3, v1, v3}, Lcom/jirbo/adcolony/d;->a(ZLjava/lang/String;I)V

    goto/16 :goto_2

    .line 403
    :cond_e
    const/16 v2, 0x14

    .line 404
    iget v3, v0, Lcom/jirbo/adcolony/t$a;->g:I

    if-lez v3, :cond_f

    iget v2, v0, Lcom/jirbo/adcolony/t$a;->g:I

    mul-int/lit8 v2, v2, 0x3

    .line 405
    :cond_f
    if-le v2, v1, :cond_10

    .line 406
    :goto_3
    sget-object v2, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "Retrying in "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/l;->a(I)Lcom/jirbo/adcolony/l;

    move-result-object v2

    const-string v3, " seconds (attempt "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    iget v3, v0, Lcom/jirbo/adcolony/t$a;->f:I

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(I)Lcom/jirbo/adcolony/l;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 407
    iput v1, v0, Lcom/jirbo/adcolony/t$a;->g:I

    .line 408
    invoke-static {}, Lcom/jirbo/adcolony/aa;->c()D

    move-result-wide v2

    int-to-double v4, v1

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/jirbo/adcolony/t$a;->e:D

    goto/16 :goto_2

    :cond_10
    move v1, v2

    goto :goto_3
.end method
