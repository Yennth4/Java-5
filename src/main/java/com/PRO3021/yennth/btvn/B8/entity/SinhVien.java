package com.PRO3021.yennth.btvn.B8.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "sinh_vien")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString

public class SinhVien {

    @Id @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "mssv")
    private String mssv;

    @Column(name = "name")
    private String name;

    @Column(name = "dia_chi")
    private String diaChi;

    // 1 class - N sinh vien
    // 1 sinh vien - 1 class
    @ManyToOne
    @JoinColumn(name = "lop_hoc_id" , referencedColumnName = "id")
    private LopHoc lopHoc;

}
