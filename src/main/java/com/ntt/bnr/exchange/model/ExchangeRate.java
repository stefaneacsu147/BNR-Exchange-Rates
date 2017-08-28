package com.ntt.bnr.exchange.model;

import javax.persistence.Entity;
import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Column;
import javax.persistence.Version;

import com.ntt.bnr.exchange.model.MonetaryUnit;

import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

//TODO: JAXB, SERVLET, VAADIN(JPA COMPONENTS), EJB, TIMERSERVICE.

@Entity
public class ExchangeRate implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "id", updatable = false, nullable = false)
	private Long id;

	@Column(nullable = false, precision = 19, scale = 4)
	private BigDecimal value;
	
	@Column
	private Integer multiplier;

	@ManyToOne
	private MonetaryUnit finalMonetaryUnit;

	@ManyToOne
	private MonetaryUnit originCurrency;
	
	@ManyToOne
	private CurrencyExchangeObjectModel objectModel;

	@Column(nullable = false)
	@Temporal(TemporalType.DATE)
	private Date creationDate;

	public Long getId() {
		return this.id;
	}

	public void setId(final Long id) {
		this.id = id;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (!(obj instanceof ExchangeRate)) {
			return false;
		}
		ExchangeRate other = (ExchangeRate) obj;
		if (id != null) {
			if (!id.equals(other.id)) {
				return false;
			}
		}
		return true;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	public BigDecimal getValue() {
		return value;
	}

	public void setValue(BigDecimal value) {
		this.value = value;
	}

	public MonetaryUnit getFinalMonetaryUnit() {
		return this.finalMonetaryUnit;
	}

	public void setFinalMonetaryUnit(final MonetaryUnit finalMonetaryUnit) {
		this.finalMonetaryUnit = finalMonetaryUnit;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	public MonetaryUnit getOriginCurrency() {
		return this.originCurrency;
	}

	public void setOriginCurrency(final MonetaryUnit originCurrency) {
		this.originCurrency = originCurrency;
	}

	public Integer getMultiplier() {
		return multiplier;
	}

	public void setMultiplier(Integer multiplier) {
		this.multiplier = multiplier;
	}


}