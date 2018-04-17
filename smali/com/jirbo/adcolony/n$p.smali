.class Lcom/jirbo/adcolony/n$p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "p"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/jirbo/adcolony/n$s;

.field g:Lcom/jirbo/adcolony/n$r;

.field h:Lcom/jirbo/adcolony/n$q;

.field i:Z

.field j:Lcom/jirbo/adcolony/n$l;

.field k:Lcom/jirbo/adcolony/n$l;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1193
    iget-boolean v1, p0, Lcom/jirbo/adcolony/n$p;->a:Z

    if-nez v1, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return v0

    .line 1194
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$p;->g:Lcom/jirbo/adcolony/n$r;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$r;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1195
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$p;->f:Lcom/jirbo/adcolony/n$s;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1197
    iget-object v1, p0, Lcom/jirbo/adcolony/n$p;->j:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1198
    iget-object v1, p0, Lcom/jirbo/adcolony/n$p;->k:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1200
    iget-boolean v1, p0, Lcom/jirbo/adcolony/n$p;->i:Z

    if-nez v1, :cond_0

    .line 1202
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1163
    if-nez p1, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return v0

    .line 1165
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/n$p;->a:Z

    .line 1166
    const-string v1, "advertiser_name"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$p;->c:Ljava/lang/String;

    .line 1167
    const-string v1, "description"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$p;->d:Ljava/lang/String;

    .line 1168
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/n$p;->e:Ljava/lang/String;

    .line 1170
    iput-boolean v0, p0, Lcom/jirbo/adcolony/n$p;->i:Z

    .line 1172
    new-instance v1, Lcom/jirbo/adcolony/n$s;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$s;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$p;->f:Lcom/jirbo/adcolony/n$s;

    .line 1173
    iget-object v1, p0, Lcom/jirbo/adcolony/n$p;->f:Lcom/jirbo/adcolony/n$s;

    const-string v2, "thumb"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$s;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    new-instance v1, Lcom/jirbo/adcolony/n$r;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$r;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$p;->g:Lcom/jirbo/adcolony/n$r;

    .line 1176
    iget-object v1, p0, Lcom/jirbo/adcolony/n$p;->g:Lcom/jirbo/adcolony/n$r;

    const-string v2, "poster"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$r;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1178
    new-instance v1, Lcom/jirbo/adcolony/n$l;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$l;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$p;->j:Lcom/jirbo/adcolony/n$l;

    .line 1179
    iget-object v1, p0, Lcom/jirbo/adcolony/n$p;->j:Lcom/jirbo/adcolony/n$l;

    const-string v2, "mute"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$l;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/jirbo/adcolony/n$p;->j:Lcom/jirbo/adcolony/n$l;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/n$l;->f:Z

    iput-boolean v1, p0, Lcom/jirbo/adcolony/n$p;->b:Z

    .line 1182
    new-instance v1, Lcom/jirbo/adcolony/n$l;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$l;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$p;->k:Lcom/jirbo/adcolony/n$l;

    .line 1183
    iget-object v1, p0, Lcom/jirbo/adcolony/n$p;->k:Lcom/jirbo/adcolony/n$l;

    const-string v2, "unmute"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$l;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1185
    new-instance v1, Lcom/jirbo/adcolony/n$q;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$q;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/n$p;->h:Lcom/jirbo/adcolony/n$q;

    .line 1186
    iget-object v1, p0, Lcom/jirbo/adcolony/n$p;->h:Lcom/jirbo/adcolony/n$q;

    const-string v2, "overlay"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/n$q;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1188
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1207
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$p;->g:Lcom/jirbo/adcolony/n$r;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$r;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$p;->g:Lcom/jirbo/adcolony/n$r;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$p;->f:Lcom/jirbo/adcolony/n$s;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$s;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$p;->f:Lcom/jirbo/adcolony/n$s;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/jirbo/adcolony/n$p;->j:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$l;->b()V

    .line 1211
    iget-object v0, p0, Lcom/jirbo/adcolony/n$p;->k:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$l;->b()V

    .line 1212
    return-void
.end method
