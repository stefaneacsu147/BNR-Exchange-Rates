package com.ntt.bnr.exchange.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Column;
import javax.persistence.Version;

import com.ntt.bnr.exchange.model.ExchangeRate;

import java.util.Set;
import java.util.HashSet;
import javax.persistence.OneToMany;

@Entity
public class MonetaryUnit implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "id", updatable = false, nullable = false)
	private Long id;

	private String name;

	private String description;

	/*
	 * @OneToMany(fetch=FetchType.EAGER) private Set<ExchangeRate> exchangeRates
	 * = new HashSet<ExchangeRate>();
	 */

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
		if (!(obj instanceof MonetaryUnit)) {
			return false;
		}
		MonetaryUnit other = (MonetaryUnit) obj;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		String result = getClass().getSimpleName() + " ";
		if (name != null && !name.trim().isEmpty())
			result += "name: " + name;
		if (description != null && !description.trim().isEmpty())
			result += ", description: " + description;
		return result;
	}
	/*
	 * public Set<ExchangeRate> getExchangeRates() { return this.exchangeRates;
	 * }
	 * 
	 * public void setExchangeRates(final Set<ExchangeRate> exchangeRates) {
	 * this.exchangeRates = exchangeRates; }
	 */
}